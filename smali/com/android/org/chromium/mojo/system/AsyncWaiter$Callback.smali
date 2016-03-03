.class public interface abstract Lcom/android/org/chromium/mojo/system/AsyncWaiter$Callback;
.super Ljava/lang/Object;
.source "AsyncWaiter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/chromium/mojo/system/AsyncWaiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onError(Lcom/android/org/chromium/mojo/system/MojoException;)V
.end method

.method public abstract onResult(I)V
.end method
