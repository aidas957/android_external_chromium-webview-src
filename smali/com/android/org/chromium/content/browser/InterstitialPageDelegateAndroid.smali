.class public Lcom/android/org/chromium/content/browser/InterstitialPageDelegateAndroid;
.super Ljava/lang/Object;
.source "InterstitialPageDelegateAndroid.java"


# instance fields
.field private mNativePtr:J


# direct methods
.method private native nativeDontProceed(J)V
.end method

.method private native nativeInit(Ljava/lang/String;)J
.end method

.method private native nativeProceed(J)V
.end method

.method private onNativeDestroyed()V
    .locals 2

    .prologue
    .line 62
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/org/chromium/content/browser/InterstitialPageDelegateAndroid;->mNativePtr:J

    .line 63
    return-void
.end method


# virtual methods
.method protected commandReceived(Ljava/lang/String;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 58
    return-void
.end method

.method protected onDontProceed()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method protected onProceed()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method
