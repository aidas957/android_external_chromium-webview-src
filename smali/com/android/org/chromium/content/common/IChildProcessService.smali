.class public interface abstract Lcom/android/org/chromium/content/common/IChildProcessService;
.super Ljava/lang/Object;
.source "IChildProcessService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/chromium/content/common/IChildProcessService$Stub;
    }
.end annotation


# virtual methods
.method public abstract crashIntentionallyForTesting()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setupConnection(Landroid/os/Bundle;Lcom/android/org/chromium/content/common/IChildProcessCallback;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
