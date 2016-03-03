.class public interface abstract Lcom/android/org/chromium/mojo/bindings/Router;
.super Ljava/lang/Object;
.source "Router.java"

# interfaces
.implements Lcom/android/org/chromium/mojo/bindings/HandleOwner;
.implements Lcom/android/org/chromium/mojo/bindings/MessageReceiverWithResponder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/org/chromium/mojo/bindings/HandleOwner",
        "<",
        "Lcom/android/org/chromium/mojo/system/MessagePipeHandle;",
        ">;",
        "Lcom/android/org/chromium/mojo/bindings/MessageReceiverWithResponder;"
    }
.end annotation


# virtual methods
.method public abstract setErrorHandler(Lcom/android/org/chromium/mojo/bindings/ConnectionErrorHandler;)V
.end method

.method public abstract setIncomingMessageReceiver(Lcom/android/org/chromium/mojo/bindings/MessageReceiverWithResponder;)V
.end method

.method public abstract start()V
.end method
