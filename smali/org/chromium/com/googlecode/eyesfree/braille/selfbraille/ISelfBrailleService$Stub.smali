.class public abstract Lorg/chromium/com/googlecode/eyesfree/braille/selfbraille/ISelfBrailleService$Stub;
.super Landroid/os/Binder;
.source "ISelfBrailleService.java"

# interfaces
.implements Lorg/chromium/com/googlecode/eyesfree/braille/selfbraille/ISelfBrailleService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/com/googlecode/eyesfree/braille/selfbraille/ISelfBrailleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/com/googlecode/eyesfree/braille/selfbraille/ISelfBrailleService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lorg/chromium/com/googlecode/eyesfree/braille/selfbraille/ISelfBrailleService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "com.android.org.chromium.com.googlecode.eyesfree.braille.selfbraille.ISelfBrailleService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/chromium/com/googlecode/eyesfree/braille/selfbraille/ISelfBrailleService;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lorg/chromium/com/googlecode/eyesfree/braille/selfbraille/ISelfBrailleService;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lorg/chromium/com/googlecode/eyesfree/braille/selfbraille/ISelfBrailleService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lorg/chromium/com/googlecode/eyesfree/braille/selfbraille/ISelfBrailleService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 46
    :sswitch_0
    const-string v3, "com.android.org.chromium.com.googlecode.eyesfree.braille.selfbraille.ISelfBrailleService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v3, "com.android.org.chromium.com.googlecode.eyesfree.braille.selfbraille.ISelfBrailleService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 55
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    sget-object v3, Lorg/chromium/com/googlecode/eyesfree/braille/selfbraille/WriteData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/com/googlecode/eyesfree/braille/selfbraille/WriteData;

    .line 61
    .local v1, "_arg1":Lorg/chromium/com/googlecode/eyesfree/braille/selfbraille/WriteData;
    :goto_1
    invoke-virtual {p0, v0, v1}, Lorg/chromium/com/googlecode/eyesfree/braille/selfbraille/ISelfBrailleService$Stub;->write(Landroid/os/IBinder;Lorg/chromium/com/googlecode/eyesfree/braille/selfbraille/WriteData;)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 59
    .end local v1    # "_arg1":Lorg/chromium/com/googlecode/eyesfree/braille/selfbraille/WriteData;
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lorg/chromium/com/googlecode/eyesfree/braille/selfbraille/WriteData;
    goto :goto_1

    .line 67
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Lorg/chromium/com/googlecode/eyesfree/braille/selfbraille/WriteData;
    :sswitch_2
    const-string v3, "com.android.org.chromium.com.googlecode.eyesfree.braille.selfbraille.ISelfBrailleService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 70
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lorg/chromium/com/googlecode/eyesfree/braille/selfbraille/ISelfBrailleService$Stub;->disconnect(Landroid/os/IBinder;)V

    goto :goto_0

    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
