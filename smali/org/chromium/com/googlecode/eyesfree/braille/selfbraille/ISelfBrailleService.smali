.class public interface abstract Lorg/chromium/com/googlecode/eyesfree/braille/selfbraille/ISelfBrailleService;
.super Ljava/lang/Object;
.source "ISelfBrailleService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/com/googlecode/eyesfree/braille/selfbraille/ISelfBrailleService$Stub;
    }
.end annotation


# virtual methods
.method public abstract disconnect(Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract write(Landroid/os/IBinder;Lorg/chromium/com/googlecode/eyesfree/braille/selfbraille/WriteData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
