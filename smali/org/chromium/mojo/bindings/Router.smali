.class public interface abstract Lorg/chromium/mojo/bindings/Router;
.super Ljava/lang/Object;
.source "Router.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/HandleOwner;
.implements Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/chromium/mojo/bindings/HandleOwner",
        "<",
        "Lorg/chromium/mojo/system/MessagePipeHandle;",
        ">;",
        "Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;"
    }
.end annotation


# virtual methods
.method public abstract setErrorHandler(Lorg/chromium/mojo/bindings/ConnectionErrorHandler;)V
.end method

.method public abstract setIncomingMessageReceiver(Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V
.end method

.method public abstract start()V
.end method
