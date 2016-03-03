.class public Lcom/android/org/chromium/mojo/bindings/RouterImpl;
.super Ljava/lang/Object;
.source "RouterImpl.java"

# interfaces
.implements Lcom/android/org/chromium/mojo/bindings/Router;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/chromium/mojo/bindings/RouterImpl$1;,
        Lcom/android/org/chromium/mojo/bindings/RouterImpl$ResponderThunk;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mConnector:Lcom/android/org/chromium/mojo/bindings/Connector;

.field private mIncomingMessageReceiver:Lcom/android/org/chromium/mojo/bindings/MessageReceiverWithResponder;

.field private mNextRequestId:J

.field private mResponders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/org/chromium/mojo/bindings/MessageReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/android/org/chromium/mojo/bindings/RouterImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/org/chromium/mojo/bindings/RouterImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/org/chromium/mojo/system/MessagePipeHandle;)V
    .locals 1
    .param p1, "messagePipeHandle"    # Lcom/android/org/chromium/mojo/system/MessagePipeHandle;

    .prologue
    .line 68
    invoke-static {p1}, Lcom/android/org/chromium/mojo/bindings/BindingsHelper;->getDefaultAsyncWaiterForHandle(Lcom/android/org/chromium/mojo/system/Handle;)Lcom/android/org/chromium/mojo/system/AsyncWaiter;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/org/chromium/mojo/bindings/RouterImpl;-><init>(Lcom/android/org/chromium/mojo/system/MessagePipeHandle;Lcom/android/org/chromium/mojo/system/AsyncWaiter;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/android/org/chromium/mojo/system/MessagePipeHandle;Lcom/android/org/chromium/mojo/system/AsyncWaiter;)V
    .locals 3
    .param p1, "messagePipeHandle"    # Lcom/android/org/chromium/mojo/system/MessagePipeHandle;
    .param p2, "asyncWaiter"    # Lcom/android/org/chromium/mojo/system/AsyncWaiter;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/android/org/chromium/mojo/bindings/RouterImpl;->mNextRequestId:J

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/org/chromium/mojo/bindings/RouterImpl;->mResponders:Ljava/util/Map;

    .line 79
    new-instance v0, Lcom/android/org/chromium/mojo/bindings/Connector;

    invoke-direct {v0, p1, p2}, Lcom/android/org/chromium/mojo/bindings/Connector;-><init>(Lcom/android/org/chromium/mojo/system/MessagePipeHandle;Lcom/android/org/chromium/mojo/system/AsyncWaiter;)V

    iput-object v0, p0, Lcom/android/org/chromium/mojo/bindings/RouterImpl;->mConnector:Lcom/android/org/chromium/mojo/bindings/Connector;

    .line 80
    iget-object v0, p0, Lcom/android/org/chromium/mojo/bindings/RouterImpl;->mConnector:Lcom/android/org/chromium/mojo/bindings/Connector;

    new-instance v1, Lcom/android/org/chromium/mojo/bindings/RouterImpl$ResponderThunk;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/org/chromium/mojo/bindings/RouterImpl$ResponderThunk;-><init>(Lcom/android/org/chromium/mojo/bindings/RouterImpl;Lcom/android/org/chromium/mojo/bindings/RouterImpl$1;)V

    invoke-virtual {v0, v1}, Lcom/android/org/chromium/mojo/bindings/Connector;->setIncomingMessageReceiver(Lcom/android/org/chromium/mojo/bindings/MessageReceiver;)V

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/android/org/chromium/mojo/bindings/RouterImpl;Lcom/android/org/chromium/mojo/bindings/Message;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/org/chromium/mojo/bindings/RouterImpl;
    .param p1, "x1"    # Lcom/android/org/chromium/mojo/bindings/Message;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/android/org/chromium/mojo/bindings/RouterImpl;->handleIncomingMessage(Lcom/android/org/chromium/mojo/bindings/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/org/chromium/mojo/bindings/RouterImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/org/chromium/mojo/bindings/RouterImpl;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/org/chromium/mojo/bindings/RouterImpl;->handleConnectorClose()V

    return-void
.end method

.method private handleConnectorClose()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/org/chromium/mojo/bindings/RouterImpl;->mIncomingMessageReceiver:Lcom/android/org/chromium/mojo/bindings/MessageReceiverWithResponder;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/org/chromium/mojo/bindings/RouterImpl;->mIncomingMessageReceiver:Lcom/android/org/chromium/mojo/bindings/MessageReceiverWithResponder;

    invoke-interface {v0}, Lcom/android/org/chromium/mojo/bindings/MessageReceiverWithResponder;->close()V

    .line 194
    :cond_0
    return-void
.end method

.method private handleIncomingMessage(Lcom/android/org/chromium/mojo/bindings/Message;)Z
    .locals 7
    .param p1, "message"    # Lcom/android/org/chromium/mojo/bindings/Message;

    .prologue
    const/4 v4, 0x0

    .line 164
    invoke-virtual {p1}, Lcom/android/org/chromium/mojo/bindings/Message;->asServiceMessage()Lcom/android/org/chromium/mojo/bindings/ServiceMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/chromium/mojo/bindings/ServiceMessage;->getHeader()Lcom/android/org/chromium/mojo/bindings/MessageHeader;

    move-result-object v0

    .line 165
    .local v0, "header":Lcom/android/org/chromium/mojo/bindings/MessageHeader;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/android/org/chromium/mojo/bindings/MessageHeader;->hasFlag(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 166
    iget-object v5, p0, Lcom/android/org/chromium/mojo/bindings/RouterImpl;->mIncomingMessageReceiver:Lcom/android/org/chromium/mojo/bindings/MessageReceiverWithResponder;

    if-eqz v5, :cond_1

    .line 167
    iget-object v4, p0, Lcom/android/org/chromium/mojo/bindings/RouterImpl;->mIncomingMessageReceiver:Lcom/android/org/chromium/mojo/bindings/MessageReceiverWithResponder;

    invoke-interface {v4, p1, p0}, Lcom/android/org/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lcom/android/org/chromium/mojo/bindings/Message;Lcom/android/org/chromium/mojo/bindings/MessageReceiver;)Z

    move-result v4

    .line 187
    :cond_0
    :goto_0
    return v4

    .line 171
    :cond_1
    invoke-virtual {p0}, Lcom/android/org/chromium/mojo/bindings/RouterImpl;->close()V

    goto :goto_0

    .line 173
    :cond_2
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/android/org/chromium/mojo/bindings/MessageHeader;->hasFlag(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 174
    invoke-virtual {v0}, Lcom/android/org/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v2

    .line 175
    .local v2, "requestId":J
    iget-object v5, p0, Lcom/android/org/chromium/mojo/bindings/RouterImpl;->mResponders:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/chromium/mojo/bindings/MessageReceiver;

    .line 176
    .local v1, "responder":Lcom/android/org/chromium/mojo/bindings/MessageReceiver;
    if-eqz v1, :cond_0

    .line 179
    iget-object v4, p0, Lcom/android/org/chromium/mojo/bindings/RouterImpl;->mResponders:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-interface {v1, p1}, Lcom/android/org/chromium/mojo/bindings/MessageReceiver;->accept(Lcom/android/org/chromium/mojo/bindings/Message;)Z

    move-result v4

    goto :goto_0

    .line 182
    .end local v1    # "responder":Lcom/android/org/chromium/mojo/bindings/MessageReceiver;
    .end local v2    # "requestId":J
    :cond_3
    iget-object v5, p0, Lcom/android/org/chromium/mojo/bindings/RouterImpl;->mIncomingMessageReceiver:Lcom/android/org/chromium/mojo/bindings/MessageReceiverWithResponder;

    if-eqz v5, :cond_0

    .line 183
    iget-object v4, p0, Lcom/android/org/chromium/mojo/bindings/RouterImpl;->mIncomingMessageReceiver:Lcom/android/org/chromium/mojo/bindings/MessageReceiverWithResponder;

    invoke-interface {v4, p1}, Lcom/android/org/chromium/mojo/bindings/MessageReceiverWithResponder;->accept(Lcom/android/org/chromium/mojo/bindings/Message;)Z

    move-result v4

    goto :goto_0
.end method


# virtual methods
.method public accept(Lcom/android/org/chromium/mojo/bindings/Message;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/org/chromium/mojo/bindings/Message;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/org/chromium/mojo/bindings/RouterImpl;->mConnector:Lcom/android/org/chromium/mojo/bindings/Connector;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/mojo/bindings/Connector;->accept(Lcom/android/org/chromium/mojo/bindings/Message;)Z

    move-result v0

    return v0
.end method

.method public acceptWithResponder(Lcom/android/org/chromium/mojo/bindings/Message;Lcom/android/org/chromium/mojo/bindings/MessageReceiver;)Z
    .locals 8
    .param p1, "message"    # Lcom/android/org/chromium/mojo/bindings/Message;
    .param p2, "responder"    # Lcom/android/org/chromium/mojo/bindings/MessageReceiver;

    .prologue
    const-wide/16 v6, 0x1

    const/4 v1, 0x1

    .line 114
    invoke-virtual {p1}, Lcom/android/org/chromium/mojo/bindings/Message;->asServiceMessage()Lcom/android/org/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    .line 116
    .local v0, "messageWithHeader":Lcom/android/org/chromium/mojo/bindings/ServiceMessage;
    sget-boolean v4, Lcom/android/org/chromium/mojo/bindings/RouterImpl;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lcom/android/org/chromium/mojo/bindings/ServiceMessage;->getHeader()Lcom/android/org/chromium/mojo/bindings/MessageHeader;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/org/chromium/mojo/bindings/MessageHeader;->hasFlag(I)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 119
    :cond_0
    iget-wide v2, p0, Lcom/android/org/chromium/mojo/bindings/RouterImpl;->mNextRequestId:J

    add-long v4, v2, v6

    iput-wide v4, p0, Lcom/android/org/chromium/mojo/bindings/RouterImpl;->mNextRequestId:J

    .line 121
    .local v2, "requestId":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    .line 122
    iget-wide v2, p0, Lcom/android/org/chromium/mojo/bindings/RouterImpl;->mNextRequestId:J

    .end local v2    # "requestId":J
    add-long v4, v2, v6

    iput-wide v4, p0, Lcom/android/org/chromium/mojo/bindings/RouterImpl;->mNextRequestId:J

    .line 124
    .restart local v2    # "requestId":J
    :cond_1
    iget-object v4, p0, Lcom/android/org/chromium/mojo/bindings/RouterImpl;->mResponders:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 125
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v4, "Unable to find a new request identifier."

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 127
    :cond_2
    invoke-virtual {v0, v2, v3}, Lcom/android/org/chromium/mojo/bindings/ServiceMessage;->setRequestId(J)V

    .line 128
    iget-object v4, p0, Lcom/android/org/chromium/mojo/bindings/RouterImpl;->mConnector:Lcom/android/org/chromium/mojo/bindings/Connector;

    invoke-virtual {v4, v0}, Lcom/android/org/chromium/mojo/bindings/Connector;->accept(Lcom/android/org/chromium/mojo/bindings/Message;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 129
    const/4 v1, 0x0

    .line 133
    :goto_0
    return v1

    .line 132
    :cond_3
    iget-object v4, p0, Lcom/android/org/chromium/mojo/bindings/RouterImpl;->mResponders:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/org/chromium/mojo/bindings/RouterImpl;->mConnector:Lcom/android/org/chromium/mojo/bindings/Connector;

    invoke-virtual {v0}, Lcom/android/org/chromium/mojo/bindings/Connector;->close()V

    .line 150
    return-void
.end method

.method public setErrorHandler(Lcom/android/org/chromium/mojo/bindings/ConnectionErrorHandler;)V
    .locals 1
    .param p1, "errorHandler"    # Lcom/android/org/chromium/mojo/bindings/ConnectionErrorHandler;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/org/chromium/mojo/bindings/RouterImpl;->mConnector:Lcom/android/org/chromium/mojo/bindings/Connector;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/mojo/bindings/Connector;->setErrorHandler(Lcom/android/org/chromium/mojo/bindings/ConnectionErrorHandler;)V

    .line 158
    return-void
.end method

.method public setIncomingMessageReceiver(Lcom/android/org/chromium/mojo/bindings/MessageReceiverWithResponder;)V
    .locals 0
    .param p1, "incomingMessageReceiver"    # Lcom/android/org/chromium/mojo/bindings/MessageReceiverWithResponder;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/org/chromium/mojo/bindings/RouterImpl;->mIncomingMessageReceiver:Lcom/android/org/chromium/mojo/bindings/MessageReceiverWithResponder;

    .line 97
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/org/chromium/mojo/bindings/RouterImpl;->mConnector:Lcom/android/org/chromium/mojo/bindings/Connector;

    invoke-virtual {v0}, Lcom/android/org/chromium/mojo/bindings/Connector;->start()V

    .line 89
    return-void
.end method
