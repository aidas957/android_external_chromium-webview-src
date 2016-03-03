.class public interface abstract Lcom/android/org/chromium/content/common/IChildProcessCallback;
.super Ljava/lang/Object;
.source "IChildProcessCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/chromium/content/common/IChildProcessCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract establishSurfacePeer(ILandroid/view/Surface;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getSurfaceTextureSurface(I)Lcom/android/org/chromium/content/common/SurfaceWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getViewSurface(I)Lcom/android/org/chromium/content/common/SurfaceWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerSurfaceTextureSurface(IILandroid/view/Surface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterSurfaceTextureSurface(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
