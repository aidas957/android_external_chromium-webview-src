.class public interface abstract Lcom/android/org/chromium/mojo/system/MessagePipeHandle;
.super Ljava/lang/Object;
.source "MessagePipeHandle.java"

# interfaces
.implements Lcom/android/org/chromium/mojo/system/Handle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;,
        Lcom/android/org/chromium/mojo/system/MessagePipeHandle$ReadFlags;,
        Lcom/android/org/chromium/mojo/system/MessagePipeHandle$WriteFlags;
    }
.end annotation


# virtual methods
.method public abstract readMessage(Ljava/nio/ByteBuffer;ILcom/android/org/chromium/mojo/system/MessagePipeHandle$ReadFlags;)Lcom/android/org/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;
.end method

.method public abstract writeMessage(Ljava/nio/ByteBuffer;Ljava/util/List;Lcom/android/org/chromium/mojo/system/MessagePipeHandle$WriteFlags;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/List",
            "<+",
            "Lcom/android/org/chromium/mojo/system/Handle;",
            ">;",
            "Lcom/android/org/chromium/mojo/system/MessagePipeHandle$WriteFlags;",
            ")V"
        }
    .end annotation
.end method
