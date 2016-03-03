.class public Lorg/chromium/mojo/system/impl/CoreImpl;
.super Ljava/lang/Object;
.source "CoreImpl.java"

# interfaces
.implements Lorg/chromium/mojo/system/AsyncWaiter;
.implements Lorg/chromium/mojo/system/Core;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojo/system/impl/CoreImpl$1;,
        Lorg/chromium/mojo/system/impl/CoreImpl$NativeCreationResult;,
        Lorg/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;,
        Lorg/chromium/mojo/system/impl/CoreImpl$NativeCodeAndBufferResult;,
        Lorg/chromium/mojo/system/impl/CoreImpl$LazyHolder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/chromium/mojo/system/impl/CoreImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/mojo/system/impl/CoreImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/mojo/system/impl/CoreImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/chromium/mojo/system/impl/CoreImpl$1;

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/chromium/mojo/system/impl/CoreImpl;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/mojo/system/impl/CoreImpl;JJ)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/mojo/system/impl/CoreImpl;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/mojo/system/impl/CoreImpl;->nativeCancelAsyncWait(JJ)V

    return-void
.end method

.method private static allocateDirectBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "capacity"    # I

    .prologue
    .line 445
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 446
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 447
    return-object v0
.end method

.method private static filterMojoResult(I)I
    .locals 0
    .param p0, "code"    # I

    .prologue
    .line 430
    if-ltz p0, :cond_0

    .line 431
    const/4 p0, 0x0

    .line 433
    .end local p0    # "code":I
    :cond_0
    return p0
.end method

.method public static getInstance()Lorg/chromium/mojo/system/Core;
    .locals 1

    .prologue
    .line 63
    # getter for: Lorg/chromium/mojo/system/impl/CoreImpl$LazyHolder;->INSTANCE:Lorg/chromium/mojo/system/Core;
    invoke-static {}, Lorg/chromium/mojo/system/impl/CoreImpl$LazyHolder;->access$100()Lorg/chromium/mojo/system/Core;

    move-result-object v0

    return-object v0
.end method

.method private getMojoHandle(Lorg/chromium/mojo/system/Handle;)I
    .locals 1
    .param p1, "handle"    # Lorg/chromium/mojo/system/Handle;

    .prologue
    .line 411
    invoke-interface {p1}, Lorg/chromium/mojo/system/Handle;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    check-cast p1, Lorg/chromium/mojo/system/impl/HandleBase;

    .end local p1    # "handle":Lorg/chromium/mojo/system/Handle;
    invoke-virtual {p1}, Lorg/chromium/mojo/system/impl/HandleBase;->getMojoHandle()I

    move-result v0

    .line 414
    :goto_0
    return v0

    .restart local p1    # "handle":Lorg/chromium/mojo/system/Handle;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isUnrecoverableError(I)Z
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 418
    sparse-switch p0, :sswitch_data_0

    .line 425
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 423
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 418
    nop

    :sswitch_data_0
    .sparse-switch
        -0x9 -> :sswitch_0
        -0x4 -> :sswitch_0
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private native nativeAsyncWait(IIJLorg/chromium/mojo/system/AsyncWaiter$Callback;)Lorg/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;
.end method

.method private native nativeBeginReadData(III)Lorg/chromium/mojo/system/impl/CoreImpl$NativeCodeAndBufferResult;
.end method

.method private native nativeBeginWriteData(III)Lorg/chromium/mojo/system/impl/CoreImpl$NativeCodeAndBufferResult;
.end method

.method private native nativeCancelAsyncWait(JJ)V
.end method

.method private native nativeClose(I)I
.end method

.method private native nativeCreateDataPipe(Ljava/nio/ByteBuffer;)Lorg/chromium/mojo/system/impl/CoreImpl$NativeCreationResult;
.end method

.method private native nativeCreateMessagePipe(Ljava/nio/ByteBuffer;)Lorg/chromium/mojo/system/impl/CoreImpl$NativeCreationResult;
.end method

.method private native nativeCreateSharedBuffer(Ljava/nio/ByteBuffer;J)Lorg/chromium/mojo/system/impl/CoreImpl$NativeCreationResult;
.end method

.method private native nativeDuplicate(ILjava/nio/ByteBuffer;)Lorg/chromium/mojo/system/impl/CoreImpl$NativeCreationResult;
.end method

.method private native nativeEndReadData(II)I
.end method

.method private native nativeEndWriteData(II)I
.end method

.method private native nativeGetTimeTicksNow()J
.end method

.method private native nativeMap(IJJI)Lorg/chromium/mojo/system/impl/CoreImpl$NativeCodeAndBufferResult;
.end method

.method private native nativeReadData(ILjava/nio/ByteBuffer;II)I
.end method

.method private native nativeReadMessage(ILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;
.end method

.method private native nativeUnmap(Ljava/nio/ByteBuffer;)I
.end method

.method private native nativeWait(IIJ)I
.end method

.method private native nativeWaitMany(Ljava/nio/ByteBuffer;J)I
.end method

.method private native nativeWriteData(ILjava/nio/ByteBuffer;II)I
.end method

.method private native nativeWriteMessage(ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;I)I
.end method

.method private newAsyncWaiterCancellableImpl(JJ)Lorg/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;
    .locals 7
    .param p1, "id"    # J
    .param p3, "dataPtr"    # J

    .prologue
    .line 520
    new-instance v0, Lorg/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v6}, Lorg/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;-><init>(Lorg/chromium/mojo/system/impl/CoreImpl;JJLorg/chromium/mojo/system/impl/CoreImpl$1;)V

    return-object v0
.end method

.method private static newNativeCodeAndBufferResult(ILjava/nio/ByteBuffer;)Lorg/chromium/mojo/system/impl/CoreImpl$NativeCodeAndBufferResult;
    .locals 2
    .param p0, "mojoResult"    # I
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 543
    new-instance v0, Lorg/chromium/mojo/system/impl/CoreImpl$NativeCodeAndBufferResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/chromium/mojo/system/impl/CoreImpl$NativeCodeAndBufferResult;-><init>(Lorg/chromium/mojo/system/impl/CoreImpl$1;)V

    .line 544
    .local v0, "result":Lorg/chromium/mojo/system/impl/CoreImpl$NativeCodeAndBufferResult;
    invoke-virtual {v0, p0}, Lorg/chromium/mojo/system/impl/CoreImpl$NativeCodeAndBufferResult;->setMojoResult(I)V

    .line 545
    invoke-virtual {v0, p1}, Lorg/chromium/mojo/system/impl/CoreImpl$NativeCodeAndBufferResult;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 546
    return-object v0
.end method

.method private static newNativeCreationResult(III)Lorg/chromium/mojo/system/impl/CoreImpl$NativeCreationResult;
    .locals 2
    .param p0, "mojoResult"    # I
    .param p1, "mojoHandle1"    # I
    .param p2, "mojoHandle2"    # I

    .prologue
    .line 615
    new-instance v0, Lorg/chromium/mojo/system/impl/CoreImpl$NativeCreationResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/chromium/mojo/system/impl/CoreImpl$NativeCreationResult;-><init>(Lorg/chromium/mojo/system/impl/CoreImpl$1;)V

    .line 616
    .local v0, "result":Lorg/chromium/mojo/system/impl/CoreImpl$NativeCreationResult;
    invoke-virtual {v0, p0}, Lorg/chromium/mojo/system/impl/CoreImpl$NativeCreationResult;->setMojoResult(I)V

    .line 617
    invoke-virtual {v0, p1}, Lorg/chromium/mojo/system/impl/CoreImpl$NativeCreationResult;->setMojoHandle1(I)V

    .line 618
    invoke-virtual {v0, p2}, Lorg/chromium/mojo/system/impl/CoreImpl$NativeCreationResult;->setMojoHandle2(I)V

    .line 619
    return-object v0
.end method

.method private static newReadMessageResult(III)Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;
    .locals 2
    .param p0, "mojoResult"    # I
    .param p1, "messageSize"    # I
    .param p2, "handlesCount"    # I

    .prologue
    .line 553
    new-instance v0, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;

    invoke-direct {v0}, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;-><init>()V

    .line 554
    .local v0, "result":Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;
    if-ltz p0, :cond_0

    .line 555
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;->setMojoResult(I)V

    .line 559
    :goto_0
    invoke-virtual {v0, p1}, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;->setMessageSize(I)V

    .line 560
    invoke-virtual {v0, p2}, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;->setHandlesCount(I)V

    .line 561
    return-object v0

    .line 557
    :cond_0
    invoke-virtual {v0, p0}, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;->setMojoResult(I)V

    goto :goto_0
.end method

.method private onAsyncWaitResult(ILorg/chromium/mojo/system/AsyncWaiter$Callback;Lorg/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;)V
    .locals 2
    .param p1, "mojoResult"    # I
    .param p2, "callback"    # Lorg/chromium/mojo/system/AsyncWaiter$Callback;
    .param p3, "cancellable"    # Lorg/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;

    .prologue
    .line 527
    # invokes: Lorg/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;->isActive()Z
    invoke-static {p3}, Lorg/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;->access$400(Lorg/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 538
    :goto_0
    return-void

    .line 531
    :cond_0
    # invokes: Lorg/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;->deactivate()V
    invoke-static {p3}, Lorg/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;->access$500(Lorg/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;)V

    .line 532
    invoke-static {p1}, Lorg/chromium/mojo/system/impl/CoreImpl;->filterMojoResult(I)I

    move-result v0

    .line 533
    .local v0, "finalCode":I
    invoke-static {v0}, Lorg/chromium/mojo/system/impl/CoreImpl;->isUnrecoverableError(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 534
    new-instance v1, Lorg/chromium/mojo/system/MojoException;

    invoke-direct {v1, v0}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    invoke-interface {p2, v1}, Lorg/chromium/mojo/system/AsyncWaiter$Callback;->onError(Lorg/chromium/mojo/system/MojoException;)V

    goto :goto_0

    .line 537
    :cond_1
    invoke-interface {p2, v0}, Lorg/chromium/mojo/system/AsyncWaiter$Callback;->onResult(I)V

    goto :goto_0
.end method


# virtual methods
.method public acquireNativeHandle(I)Lorg/chromium/mojo/system/UntypedHandle;
    .locals 1
    .param p1, "handle"    # I

    .prologue
    .line 178
    new-instance v0, Lorg/chromium/mojo/system/impl/UntypedHandleImpl;

    invoke-direct {v0, p0, p1}, Lorg/chromium/mojo/system/impl/UntypedHandleImpl;-><init>(Lorg/chromium/mojo/system/impl/CoreImpl;I)V

    return-object v0
.end method

.method public asyncWait(Lorg/chromium/mojo/system/Handle;Lorg/chromium/mojo/system/Core$HandleSignals;JLorg/chromium/mojo/system/AsyncWaiter$Callback;)Lorg/chromium/mojo/system/AsyncWaiter$Cancellable;
    .locals 7
    .param p1, "handle"    # Lorg/chromium/mojo/system/Handle;
    .param p2, "signals"    # Lorg/chromium/mojo/system/Core$HandleSignals;
    .param p3, "deadline"    # J
    .param p5, "callback"    # Lorg/chromium/mojo/system/AsyncWaiter$Callback;

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lorg/chromium/mojo/system/impl/CoreImpl;->getMojoHandle(Lorg/chromium/mojo/system/Handle;)I

    move-result v2

    invoke-virtual {p2}, Lorg/chromium/mojo/system/Core$HandleSignals;->getFlags()I

    move-result v3

    move-object v1, p0

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/chromium/mojo/system/impl/CoreImpl;->nativeAsyncWait(IIJLorg/chromium/mojo/system/AsyncWaiter$Callback;)Lorg/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;

    move-result-object v0

    return-object v0
.end method

.method close(I)V
    .locals 2
    .param p1, "mojoHandle"    # I

    .prologue
    .line 203
    invoke-direct {p0, p1}, Lorg/chromium/mojo/system/impl/CoreImpl;->nativeClose(I)I

    move-result v0

    .line 204
    .local v0, "mojoResult":I
    if-eqz v0, :cond_0

    .line 205
    new-instance v1, Lorg/chromium/mojo/system/MojoException;

    invoke-direct {v1, v0}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    throw v1

    .line 207
    :cond_0
    return-void
.end method

.method closeWithResult(I)I
    .locals 1
    .param p1, "mojoHandle"    # I

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lorg/chromium/mojo/system/impl/CoreImpl;->nativeClose(I)I

    move-result v0

    return v0
.end method

.method public getDefaultAsyncWaiter()Lorg/chromium/mojo/system/AsyncWaiter;
    .locals 0

    .prologue
    .line 186
    return-object p0
.end method

.method readMessage(Lorg/chromium/mojo/system/impl/MessagePipeHandleImpl;Ljava/nio/ByteBuffer;ILorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;)Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;
    .locals 7
    .param p1, "handle"    # Lorg/chromium/mojo/system/impl/MessagePipeHandleImpl;
    .param p2, "bytes"    # Ljava/nio/ByteBuffer;
    .param p3, "maxNumberOfHandles"    # I
    .param p4, "flags"    # Lorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;

    .prologue
    .line 244
    const/4 v1, 0x0

    .line 245
    .local v1, "handlesBuffer":Ljava/nio/ByteBuffer;
    if-lez p3, :cond_0

    .line 246
    mul-int/lit8 v5, p3, 0x4

    invoke-static {v5}, Lorg/chromium/mojo/system/impl/CoreImpl;->allocateDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 248
    :cond_0
    invoke-virtual {p1}, Lorg/chromium/mojo/system/impl/MessagePipeHandleImpl;->getMojoHandle()I

    move-result v5

    invoke-virtual {p4}, Lorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;->getFlags()I

    move-result v6

    invoke-direct {p0, v5, p2, v1, v6}, Lorg/chromium/mojo/system/impl/CoreImpl;->nativeReadMessage(ILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;

    move-result-object v4

    .line 250
    .local v4, "result":Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;
    invoke-virtual {v4}, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;->getMojoResult()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;->getMojoResult()I

    move-result v5

    const/4 v6, -0x8

    if-eq v5, v6, :cond_1

    invoke-virtual {v4}, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;->getMojoResult()I

    move-result v5

    const/16 v6, -0x11

    if-eq v5, v6, :cond_1

    .line 253
    new-instance v5, Lorg/chromium/mojo/system/MojoException;

    invoke-virtual {v4}, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;->getMojoResult()I

    move-result v6

    invoke-direct {v5, v6}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    throw v5

    .line 256
    :cond_1
    invoke-virtual {v4}, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;->getMojoResult()I

    move-result v5

    if-nez v5, :cond_4

    .line 257
    if-eqz p2, :cond_2

    .line 258
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 259
    invoke-virtual {v4}, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;->getMessageSize()I

    move-result v5

    invoke-virtual {p2, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 262
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v4}, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;->getHandlesCount()I

    move-result v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 264
    .local v0, "handles":Ljava/util/List;, "Ljava/util/List<Lorg/chromium/mojo/system/UntypedHandle;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;->getHandlesCount()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 265
    mul-int/lit8 v5, v2, 0x4

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    .line 266
    .local v3, "mojoHandle":I
    new-instance v5, Lorg/chromium/mojo/system/impl/UntypedHandleImpl;

    invoke-direct {v5, p0, v3}, Lorg/chromium/mojo/system/impl/UntypedHandleImpl;-><init>(Lorg/chromium/mojo/system/impl/CoreImpl;I)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 268
    .end local v3    # "mojoHandle":I
    :cond_3
    invoke-virtual {v4, v0}, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;->setHandles(Ljava/util/List;)V

    .line 270
    .end local v0    # "handles":Ljava/util/List;, "Ljava/util/List<Lorg/chromium/mojo/system/UntypedHandle;>;"
    .end local v2    # "i":I
    :cond_4
    return-object v4
.end method

.method writeMessage(Lorg/chromium/mojo/system/impl/MessagePipeHandleImpl;Ljava/nio/ByteBuffer;Ljava/util/List;Lorg/chromium/mojo/system/MessagePipeHandle$WriteFlags;)V
    .locals 9
    .param p1, "pipeHandle"    # Lorg/chromium/mojo/system/impl/MessagePipeHandleImpl;
    .param p2, "bytes"    # Ljava/nio/ByteBuffer;
    .param p4, "flags"    # Lorg/chromium/mojo/system/MessagePipeHandle$WriteFlags;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/system/impl/MessagePipeHandleImpl;",
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
    .local p3, "handles":Ljava/util/List;, "Ljava/util/List<+Lorg/chromium/mojo/system/Handle;>;"
    const/4 v3, 0x0

    .line 214
    const/4 v4, 0x0

    .line 215
    .local v4, "handlesBuffer":Ljava/nio/ByteBuffer;
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 216
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Lorg/chromium/mojo/system/impl/CoreImpl;->allocateDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 217
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/chromium/mojo/system/Handle;

    .line 218
    .local v6, "handle":Lorg/chromium/mojo/system/Handle;
    invoke-direct {p0, v6}, Lorg/chromium/mojo/system/impl/CoreImpl;->getMojoHandle(Lorg/chromium/mojo/system/Handle;)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 220
    .end local v6    # "handle":Lorg/chromium/mojo/system/Handle;
    :cond_0
    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 222
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p1}, Lorg/chromium/mojo/system/impl/MessagePipeHandleImpl;->getMojoHandle()I

    move-result v1

    if-nez p2, :cond_2

    :goto_1
    invoke-virtual {p4}, Lorg/chromium/mojo/system/MessagePipeHandle$WriteFlags;->getFlags()I

    move-result v5

    move-object v0, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/chromium/mojo/system/impl/CoreImpl;->nativeWriteMessage(ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;I)I

    move-result v8

    .line 225
    .local v8, "mojoResult":I
    if-eqz v8, :cond_3

    .line 226
    new-instance v0, Lorg/chromium/mojo/system/MojoException;

    invoke-direct {v0, v8}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    throw v0

    .line 222
    .end local v8    # "mojoResult":I
    :cond_2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    goto :goto_1

    .line 229
    .restart local v8    # "mojoResult":I
    :cond_3
    if-eqz p3, :cond_5

    .line 230
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/chromium/mojo/system/Handle;

    .line 231
    .restart local v6    # "handle":Lorg/chromium/mojo/system/Handle;
    invoke-interface {v6}, Lorg/chromium/mojo/system/Handle;->isValid()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 232
    check-cast v6, Lorg/chromium/mojo/system/impl/HandleBase;

    .end local v6    # "handle":Lorg/chromium/mojo/system/Handle;
    invoke-virtual {v6}, Lorg/chromium/mojo/system/impl/HandleBase;->invalidateHandle()V

    goto :goto_2

    .line 236
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_5
    return-void
.end method
