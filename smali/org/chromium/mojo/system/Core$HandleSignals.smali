.class public Lorg/chromium/mojo/system/Core$HandleSignals;
.super Lorg/chromium/mojo/system/Flags;
.source "Core.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojo/system/Core;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HandleSignals"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/system/Flags",
        "<",
        "Lorg/chromium/mojo/system/Core$HandleSignals;",
        ">;"
    }
.end annotation


# static fields
.field public static final NONE:Lorg/chromium/mojo/system/Core$HandleSignals;

.field public static final READABLE:Lorg/chromium/mojo/system/Core$HandleSignals;

.field public static final WRITABLE:Lorg/chromium/mojo/system/Core$HandleSignals;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 40
    invoke-static {}, Lorg/chromium/mojo/system/Core$HandleSignals;->none()Lorg/chromium/mojo/system/Core$HandleSignals;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/mojo/system/Core$HandleSignals;->immutable()Lorg/chromium/mojo/system/Flags;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojo/system/Core$HandleSignals;

    sput-object v0, Lorg/chromium/mojo/system/Core$HandleSignals;->NONE:Lorg/chromium/mojo/system/Core$HandleSignals;

    .line 41
    invoke-static {}, Lorg/chromium/mojo/system/Core$HandleSignals;->none()Lorg/chromium/mojo/system/Core$HandleSignals;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/chromium/mojo/system/Core$HandleSignals;->setReadable(Z)Lorg/chromium/mojo/system/Core$HandleSignals;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/mojo/system/Core$HandleSignals;->immutable()Lorg/chromium/mojo/system/Flags;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojo/system/Core$HandleSignals;

    sput-object v0, Lorg/chromium/mojo/system/Core$HandleSignals;->READABLE:Lorg/chromium/mojo/system/Core$HandleSignals;

    .line 43
    invoke-static {}, Lorg/chromium/mojo/system/Core$HandleSignals;->none()Lorg/chromium/mojo/system/Core$HandleSignals;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/chromium/mojo/system/Core$HandleSignals;->setWritable(Z)Lorg/chromium/mojo/system/Core$HandleSignals;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/mojo/system/Core$HandleSignals;->immutable()Lorg/chromium/mojo/system/Flags;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojo/system/Core$HandleSignals;

    sput-object v0, Lorg/chromium/mojo/system/Core$HandleSignals;->WRITABLE:Lorg/chromium/mojo/system/Core$HandleSignals;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "signals"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lorg/chromium/mojo/system/Flags;-><init>(I)V

    .line 31
    return-void
.end method

.method public static none()Lorg/chromium/mojo/system/Core$HandleSignals;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Lorg/chromium/mojo/system/Core$HandleSignals;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/chromium/mojo/system/Core$HandleSignals;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public setReadable(Z)Lorg/chromium/mojo/system/Core$HandleSignals;
    .locals 1
    .param p1, "readable"    # Z

    .prologue
    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lorg/chromium/mojo/system/Core$HandleSignals;->setFlag(IZ)Lorg/chromium/mojo/system/Flags;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojo/system/Core$HandleSignals;

    return-object v0
.end method

.method public setWritable(Z)Lorg/chromium/mojo/system/Core$HandleSignals;
    .locals 1
    .param p1, "writable"    # Z

    .prologue
    .line 63
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lorg/chromium/mojo/system/Core$HandleSignals;->setFlag(IZ)Lorg/chromium/mojo/system/Flags;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojo/system/Core$HandleSignals;

    return-object v0
.end method
