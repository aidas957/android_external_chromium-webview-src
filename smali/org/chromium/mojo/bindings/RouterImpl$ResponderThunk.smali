.class Lorg/chromium/mojo/bindings/RouterImpl$ResponderThunk;
.super Ljava/lang/Object;
.source "RouterImpl.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/MessageReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojo/bindings/RouterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResponderThunk"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/mojo/bindings/RouterImpl;


# direct methods
.method private constructor <init>(Lorg/chromium/mojo/bindings/RouterImpl;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lorg/chromium/mojo/bindings/RouterImpl$ResponderThunk;->this$0:Lorg/chromium/mojo/bindings/RouterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/mojo/bindings/RouterImpl;Lorg/chromium/mojo/bindings/RouterImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/chromium/mojo/bindings/RouterImpl;
    .param p2, "x1"    # Lorg/chromium/mojo/bindings/RouterImpl$1;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lorg/chromium/mojo/bindings/RouterImpl$ResponderThunk;-><init>(Lorg/chromium/mojo/bindings/RouterImpl;)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 1
    .param p1, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    .line 28
    iget-object v0, p0, Lorg/chromium/mojo/bindings/RouterImpl$ResponderThunk;->this$0:Lorg/chromium/mojo/bindings/RouterImpl;

    # invokes: Lorg/chromium/mojo/bindings/RouterImpl;->handleIncomingMessage(Lorg/chromium/mojo/bindings/Message;)Z
    invoke-static {v0, p1}, Lorg/chromium/mojo/bindings/RouterImpl;->access$000(Lorg/chromium/mojo/bindings/RouterImpl;Lorg/chromium/mojo/bindings/Message;)Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/chromium/mojo/bindings/RouterImpl$ResponderThunk;->this$0:Lorg/chromium/mojo/bindings/RouterImpl;

    # invokes: Lorg/chromium/mojo/bindings/RouterImpl;->handleConnectorClose()V
    invoke-static {v0}, Lorg/chromium/mojo/bindings/RouterImpl;->access$100(Lorg/chromium/mojo/bindings/RouterImpl;)V

    .line 37
    return-void
.end method
