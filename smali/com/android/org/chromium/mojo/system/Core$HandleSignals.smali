.class public Lcom/android/org/chromium/mojo/system/Core$HandleSignals;
.super Lcom/android/org/chromium/mojo/system/Flags;
.source "Core.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/chromium/mojo/system/Core;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HandleSignals"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/org/chromium/mojo/system/Flags",
        "<",
        "Lcom/android/org/chromium/mojo/system/Core$HandleSignals;",
        ">;"
    }
.end annotation


# static fields
.field public static final NONE:Lcom/android/org/chromium/mojo/system/Core$HandleSignals;

.field public static final READABLE:Lcom/android/org/chromium/mojo/system/Core$HandleSignals;

.field public static final WRITABLE:Lcom/android/org/chromium/mojo/system/Core$HandleSignals;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 40
    invoke-static {}, Lcom/android/org/chromium/mojo/system/Core$HandleSignals;->none()Lcom/android/org/chromium/mojo/system/Core$HandleSignals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/chromium/mojo/system/Core$HandleSignals;->immutable()Lcom/android/org/chromium/mojo/system/Flags;

    move-result-object v0

    check-cast v0, Lcom/android/org/chromium/mojo/system/Core$HandleSignals;

    sput-object v0, Lcom/android/org/chromium/mojo/system/Core$HandleSignals;->NONE:Lcom/android/org/chromium/mojo/system/Core$HandleSignals;

    .line 41
    invoke-static {}, Lcom/android/org/chromium/mojo/system/Core$HandleSignals;->none()Lcom/android/org/chromium/mojo/system/Core$HandleSignals;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/org/chromium/mojo/system/Core$HandleSignals;->setReadable(Z)Lcom/android/org/chromium/mojo/system/Core$HandleSignals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/chromium/mojo/system/Core$HandleSignals;->immutable()Lcom/android/org/chromium/mojo/system/Flags;

    move-result-object v0

    check-cast v0, Lcom/android/org/chromium/mojo/system/Core$HandleSignals;

    sput-object v0, Lcom/android/org/chromium/mojo/system/Core$HandleSignals;->READABLE:Lcom/android/org/chromium/mojo/system/Core$HandleSignals;

    .line 43
    invoke-static {}, Lcom/android/org/chromium/mojo/system/Core$HandleSignals;->none()Lcom/android/org/chromium/mojo/system/Core$HandleSignals;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/org/chromium/mojo/system/Core$HandleSignals;->setWritable(Z)Lcom/android/org/chromium/mojo/system/Core$HandleSignals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/chromium/mojo/system/Core$HandleSignals;->immutable()Lcom/android/org/chromium/mojo/system/Flags;

    move-result-object v0

    check-cast v0, Lcom/android/org/chromium/mojo/system/Core$HandleSignals;

    sput-object v0, Lcom/android/org/chromium/mojo/system/Core$HandleSignals;->WRITABLE:Lcom/android/org/chromium/mojo/system/Core$HandleSignals;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "signals"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/org/chromium/mojo/system/Flags;-><init>(I)V

    .line 31
    return-void
.end method

.method public static none()Lcom/android/org/chromium/mojo/system/Core$HandleSignals;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Lcom/android/org/chromium/mojo/system/Core$HandleSignals;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/org/chromium/mojo/system/Core$HandleSignals;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public setReadable(Z)Lcom/android/org/chromium/mojo/system/Core$HandleSignals;
    .locals 1
    .param p1, "readable"    # Z

    .prologue
    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/org/chromium/mojo/system/Core$HandleSignals;->setFlag(IZ)Lcom/android/org/chromium/mojo/system/Flags;

    move-result-object v0

    check-cast v0, Lcom/android/org/chromium/mojo/system/Core$HandleSignals;

    return-object v0
.end method

.method public setWritable(Z)Lcom/android/org/chromium/mojo/system/Core$HandleSignals;
    .locals 1
    .param p1, "writable"    # Z

    .prologue
    .line 63
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/org/chromium/mojo/system/Core$HandleSignals;->setFlag(IZ)Lcom/android/org/chromium/mojo/system/Flags;

    move-result-object v0

    check-cast v0, Lcom/android/org/chromium/mojo/system/Core$HandleSignals;

    return-object v0
.end method
