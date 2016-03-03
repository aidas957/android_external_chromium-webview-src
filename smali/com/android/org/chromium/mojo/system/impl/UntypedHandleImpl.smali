.class Lcom/android/org/chromium/mojo/system/impl/UntypedHandleImpl;
.super Lcom/android/org/chromium/mojo/system/impl/HandleBase;
.source "UntypedHandleImpl.java"

# interfaces
.implements Lcom/android/org/chromium/mojo/system/UntypedHandle;


# direct methods
.method constructor <init>(Lcom/android/org/chromium/mojo/system/impl/CoreImpl;I)V
    .locals 0
    .param p1, "core"    # Lcom/android/org/chromium/mojo/system/impl/CoreImpl;
    .param p2, "mojoHandle"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/android/org/chromium/mojo/system/impl/HandleBase;-><init>(Lcom/android/org/chromium/mojo/system/impl/CoreImpl;I)V

    .line 23
    return-void
.end method


# virtual methods
.method public toMessagePipeHandle()Lcom/android/org/chromium/mojo/system/MessagePipeHandle;
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/android/org/chromium/mojo/system/impl/MessagePipeHandleImpl;

    invoke-direct {v0, p0}, Lcom/android/org/chromium/mojo/system/impl/MessagePipeHandleImpl;-><init>(Lcom/android/org/chromium/mojo/system/impl/HandleBase;)V

    return-object v0
.end method
