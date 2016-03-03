.class Lorg/chromium/mojo/system/impl/MessagePipeHandleImpl;
.super Lorg/chromium/mojo/system/impl/HandleBase;
.source "MessagePipeHandleImpl.java"

# interfaces
.implements Lorg/chromium/mojo/system/MessagePipeHandle;


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/impl/HandleBase;)V
    .locals 0
    .param p1, "handle"    # Lorg/chromium/mojo/system/impl/HandleBase;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lorg/chromium/mojo/system/impl/HandleBase;-><init>(Lorg/chromium/mojo/system/impl/HandleBase;)V

    .line 30
    return-void
.end method


# virtual methods
.method public readMessage(Ljava/nio/ByteBuffer;ILorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;)Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;
    .locals 1
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;
    .param p2, "maxNumberOfHandles"    # I
    .param p3, "flags"    # Lorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/chromium/mojo/system/impl/MessagePipeHandleImpl;->mCore:Lorg/chromium/mojo/system/impl/CoreImpl;

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/chromium/mojo/system/impl/CoreImpl;->readMessage(Lorg/chromium/mojo/system/impl/MessagePipeHandleImpl;Ljava/nio/ByteBuffer;ILorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;)Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;

    move-result-object v0

    return-object v0
.end method

.method public writeMessage(Ljava/nio/ByteBuffer;Ljava/util/List;Lorg/chromium/mojo/system/MessagePipeHandle$WriteFlags;)V
    .locals 1
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;
    .param p3, "flags"    # Lorg/chromium/mojo/system/MessagePipeHandle$WriteFlags;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/List",
            "<+",
            "Lorg/chromium/mojo/system/Handle;",
            ">;",
            "Lorg/chromium/mojo/system/MessagePipeHandle$WriteFlags;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    .local p2, "handles":Ljava/util/List;, "Ljava/util/List<+Lorg/chromium/mojo/system/Handle;>;"
    iget-object v0, p0, Lorg/chromium/mojo/system/impl/MessagePipeHandleImpl;->mCore:Lorg/chromium/mojo/system/impl/CoreImpl;

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/chromium/mojo/system/impl/CoreImpl;->writeMessage(Lorg/chromium/mojo/system/impl/MessagePipeHandleImpl;Ljava/nio/ByteBuffer;Ljava/util/List;Lorg/chromium/mojo/system/MessagePipeHandle$WriteFlags;)V

    .line 46
    return-void
.end method
