.class public Lcom/android/org/chromium/mojo/bindings/ServiceMessage;
.super Lcom/android/org/chromium/mojo/bindings/Message;
.source "ServiceMessage.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mHeader:Lcom/android/org/chromium/mojo/bindings/MessageHeader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/android/org/chromium/mojo/bindings/ServiceMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/org/chromium/mojo/bindings/ServiceMessage;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/android/org/chromium/mojo/bindings/Message;)V
    .locals 1
    .param p1, "baseMessage"    # Lcom/android/org/chromium/mojo/bindings/Message;

    .prologue
    .line 34
    new-instance v0, Lcom/android/org/chromium/mojo/bindings/MessageHeader;

    invoke-direct {v0, p1}, Lcom/android/org/chromium/mojo/bindings/MessageHeader;-><init>(Lcom/android/org/chromium/mojo/bindings/Message;)V

    invoke-direct {p0, p1, v0}, Lcom/android/org/chromium/mojo/bindings/ServiceMessage;-><init>(Lcom/android/org/chromium/mojo/bindings/Message;Lcom/android/org/chromium/mojo/bindings/MessageHeader;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/android/org/chromium/mojo/bindings/Message;Lcom/android/org/chromium/mojo/bindings/MessageHeader;)V
    .locals 2
    .param p1, "baseMessage"    # Lcom/android/org/chromium/mojo/bindings/Message;
    .param p2, "header"    # Lcom/android/org/chromium/mojo/bindings/MessageHeader;

    .prologue
    .line 24
    invoke-virtual {p1}, Lcom/android/org/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/org/chromium/mojo/bindings/Message;->getHandles()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/org/chromium/mojo/bindings/Message;-><init>(Ljava/nio/ByteBuffer;Ljava/util/List;)V

    .line 25
    sget-boolean v0, Lcom/android/org/chromium/mojo/bindings/ServiceMessage;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/org/chromium/mojo/bindings/MessageHeader;

    invoke-direct {v0, p1}, Lcom/android/org/chromium/mojo/bindings/MessageHeader;-><init>(Lcom/android/org/chromium/mojo/bindings/Message;)V

    invoke-virtual {p2, v0}, Lcom/android/org/chromium/mojo/bindings/MessageHeader;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 26
    :cond_0
    iput-object p2, p0, Lcom/android/org/chromium/mojo/bindings/ServiceMessage;->mHeader:Lcom/android/org/chromium/mojo/bindings/MessageHeader;

    .line 27
    return-void
.end method


# virtual methods
.method public asServiceMessage()Lcom/android/org/chromium/mojo/bindings/ServiceMessage;
    .locals 0

    .prologue
    .line 42
    return-object p0
.end method

.method public getHeader()Lcom/android/org/chromium/mojo/bindings/MessageHeader;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/org/chromium/mojo/bindings/ServiceMessage;->mHeader:Lcom/android/org/chromium/mojo/bindings/MessageHeader;

    return-object v0
.end method

.method setRequestId(J)V
    .locals 3
    .param p1, "requestId"    # J

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/org/chromium/mojo/bindings/ServiceMessage;->mHeader:Lcom/android/org/chromium/mojo/bindings/MessageHeader;

    invoke-virtual {p0}, Lcom/android/org/chromium/mojo/bindings/ServiceMessage;->getData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/org/chromium/mojo/bindings/MessageHeader;->setRequestId(Ljava/nio/ByteBuffer;J)V

    .line 71
    return-void
.end method
