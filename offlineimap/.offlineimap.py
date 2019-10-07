from subprocess import check_output


def localnametrans(folder):
    if folder == "sent":
        return "[Gmail]/Sent Mail"
    elif folder == "drafts":
        return "[Gmail]/Drafts"
    elif folder == "archive":
        return "Register"
    else:
        return folder


def remotenametrans(folder):
    if folder == "[Gmail]/Sent Mail":
        return "sent"
    elif folder == "[Gmail]/Drafts":
        return "drafts"
    elif folder == "Register":
        return "archive"
    else:
        return folder


def getpass():
    return check_output("gpg -dq ~/key/gmailpass.gpg", shell=True)
