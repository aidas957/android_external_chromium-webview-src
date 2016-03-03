.class public abstract Lorg/chromium/mojo/bindings/Interface$Manager;
.super Ljava/lang/Object;
.source "Interface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojo/bindings/Interface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Manager"
.end annotation


# virtual methods
.method public bind(Lorg/chromium/mojo/bindings/Interface;Lorg/chromium/mojo/system/MessagePipeHandle;)V
    .locals 2
    .param p2, "handle"    # Lorg/chromium/mojo/system/MessagePipeHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;",
            "Lorg/chromium/mojo/system/MessagePipeHandle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 189
    .local p0, "this":Lorg/chromium/mojo/bindings/Interface$Manager;, "Lorg/chromium/mojo/bindings/Interface$Manager<TI;TP;>;"
    .local p1, "impl":Lorg/chromium/mojo/bindings/Interface;, "TI;"
    new-instance v0, Lorg/chromium/mojo/bindings/RouterImpl;

    invoke-direct {v0, p2}, Lorg/chromium/mojo/bindings/RouterImpl;-><init>(Lorg/chromium/mojo/system/MessagePipeHandle;)V

    .line 190
    .local v0, "router":Lorg/chromium/mojo/bindings/Router;
    invoke-interface {p2}, Lorg/chromium/mojo/system/MessagePipeHandle;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v1

    invoke-virtual {p0, v1, p1, v0}, Lorg/chromium/mojo/bindings/Interface$Manager;->bind(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;Lorg/chromium/mojo/bindings/Router;)V

    .line 191
    invoke-interface {v0}, Lorg/chromium/mojo/bindings/Router;->start()V

    .line 192
    return-void
.end method

.method final bind(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;Lorg/chromium/mojo/bindings/Router;)V
    .locals 1
    .param p1, "core"    # Lorg/chromium/mojo/system/Core;
    .param p3, "router"    # Lorg/chromium/mojo/bindings/Router;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/system/Core;",
            "TI;",
            "Lorg/chromium/mojo/bindings/Router;",
            ")V"
        }
    .end annotation

    .prologue
    .line 230
    .local p0, "this":Lorg/chromium/mojo/bindings/Interface$Manager;, "Lorg/chromium/mojo/bindings/Interface$Manager<TI;TP;>;"
    .local p2, "impl":Lorg/chromium/mojo/bindings/Interface;, "TI;"
    invoke-interface {p3, p2}, Lorg/chromium/mojo/bindings/Router;->setErrorHandler(Lorg/chromium/mojo/bindings/ConnectionErrorHandler;)V

    .line 231
    invoke-virtual {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Manager;->buildStub(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)Lorg/chromium/mojo/bindings/Interface$Stub;

    move-result-object v0

    invoke-interface {p3, v0}, Lorg/chromium/mojo/bindings/Router;->setIncomingMessageReceiver(Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V

    .line 232
    return-void
.end method

.method protected abstract buildStub(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)Lorg/chromium/mojo/bindings/Interface$Stub;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/system/Core;",
            "TI;)",
            "Lorg/chromium/mojo/bindings/Interface$Stub",
            "<TI;>;"
        }
    .end annotation
.end method
