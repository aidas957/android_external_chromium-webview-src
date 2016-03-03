.class public abstract Lcom/android/org/chromium/mojo/bindings/Interface$Manager;
.super Ljava/lang/Object;
.source "Interface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/chromium/mojo/bindings/Interface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Manager"
.end annotation


# virtual methods
.method public bind(Lcom/android/org/chromium/mojo/bindings/Interface;Lcom/android/org/chromium/mojo/system/MessagePipeHandle;)V
    .locals 2
    .param p2, "handle"    # Lcom/android/org/chromium/mojo/system/MessagePipeHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;",
            "Lcom/android/org/chromium/mojo/system/MessagePipeHandle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 189
    .local p0, "this":Lcom/android/org/chromium/mojo/bindings/Interface$Manager;, "Lcom/android/org/chromium/mojo/bindings/Interface$Manager<TI;TP;>;"
    .local p1, "impl":Lcom/android/org/chromium/mojo/bindings/Interface;, "TI;"
    new-instance v0, Lcom/android/org/chromium/mojo/bindings/RouterImpl;

    invoke-direct {v0, p2}, Lcom/android/org/chromium/mojo/bindings/RouterImpl;-><init>(Lcom/android/org/chromium/mojo/system/MessagePipeHandle;)V

    .line 190
    .local v0, "router":Lcom/android/org/chromium/mojo/bindings/Router;
    invoke-interface {p2}, Lcom/android/org/chromium/mojo/system/MessagePipeHandle;->getCore()Lcom/android/org/chromium/mojo/system/Core;

    move-result-object v1

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/org/chromium/mojo/bindings/Interface$Manager;->bind(Lcom/android/org/chromium/mojo/system/Core;Lcom/android/org/chromium/mojo/bindings/Interface;Lcom/android/org/chromium/mojo/bindings/Router;)V

    .line 191
    invoke-interface {v0}, Lcom/android/org/chromium/mojo/bindings/Router;->start()V

    .line 192
    return-void
.end method

.method final bind(Lcom/android/org/chromium/mojo/system/Core;Lcom/android/org/chromium/mojo/bindings/Interface;Lcom/android/org/chromium/mojo/bindings/Router;)V
    .locals 1
    .param p1, "core"    # Lcom/android/org/chromium/mojo/system/Core;
    .param p3, "router"    # Lcom/android/org/chromium/mojo/bindings/Router;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/org/chromium/mojo/system/Core;",
            "TI;",
            "Lcom/android/org/chromium/mojo/bindings/Router;",
            ")V"
        }
    .end annotation

    .prologue
    .line 230
    .local p0, "this":Lcom/android/org/chromium/mojo/bindings/Interface$Manager;, "Lcom/android/org/chromium/mojo/bindings/Interface$Manager<TI;TP;>;"
    .local p2, "impl":Lcom/android/org/chromium/mojo/bindings/Interface;, "TI;"
    invoke-interface {p3, p2}, Lcom/android/org/chromium/mojo/bindings/Router;->setErrorHandler(Lcom/android/org/chromium/mojo/bindings/ConnectionErrorHandler;)V

    .line 231
    invoke-virtual {p0, p1, p2}, Lcom/android/org/chromium/mojo/bindings/Interface$Manager;->buildStub(Lcom/android/org/chromium/mojo/system/Core;Lcom/android/org/chromium/mojo/bindings/Interface;)Lcom/android/org/chromium/mojo/bindings/Interface$Stub;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/android/org/chromium/mojo/bindings/Router;->setIncomingMessageReceiver(Lcom/android/org/chromium/mojo/bindings/MessageReceiverWithResponder;)V

    .line 232
    return-void
.end method

.method protected abstract buildStub(Lcom/android/org/chromium/mojo/system/Core;Lcom/android/org/chromium/mojo/bindings/Interface;)Lcom/android/org/chromium/mojo/bindings/Interface$Stub;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/org/chromium/mojo/system/Core;",
            "TI;)",
            "Lcom/android/org/chromium/mojo/bindings/Interface$Stub",
            "<TI;>;"
        }
    .end annotation
.end method
