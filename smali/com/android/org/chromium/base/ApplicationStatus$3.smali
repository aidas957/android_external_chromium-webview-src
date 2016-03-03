.class final Lcom/android/org/chromium/base/ApplicationStatus$3;
.super Ljava/lang/Object;
.source "ApplicationStatus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/chromium/base/ApplicationStatus;->registerThreadSafeNativeApplicationStateListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 402
    # getter for: Lcom/android/org/chromium/base/ApplicationStatus;->sNativeApplicationStateListener:Lcom/android/org/chromium/base/ApplicationStatus$ApplicationStateListener;
    invoke-static {}, Lcom/android/org/chromium/base/ApplicationStatus;->access$300()Lcom/android/org/chromium/base/ApplicationStatus$ApplicationStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 411
    :goto_0
    return-void

    .line 404
    :cond_0
    new-instance v0, Lcom/android/org/chromium/base/ApplicationStatus$3$1;

    invoke-direct {v0, p0}, Lcom/android/org/chromium/base/ApplicationStatus$3$1;-><init>(Lcom/android/org/chromium/base/ApplicationStatus$3;)V

    # setter for: Lcom/android/org/chromium/base/ApplicationStatus;->sNativeApplicationStateListener:Lcom/android/org/chromium/base/ApplicationStatus$ApplicationStateListener;
    invoke-static {v0}, Lcom/android/org/chromium/base/ApplicationStatus;->access$302(Lcom/android/org/chromium/base/ApplicationStatus$ApplicationStateListener;)Lcom/android/org/chromium/base/ApplicationStatus$ApplicationStateListener;

    .line 410
    # getter for: Lcom/android/org/chromium/base/ApplicationStatus;->sNativeApplicationStateListener:Lcom/android/org/chromium/base/ApplicationStatus$ApplicationStateListener;
    invoke-static {}, Lcom/android/org/chromium/base/ApplicationStatus;->access$300()Lcom/android/org/chromium/base/ApplicationStatus$ApplicationStateListener;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/chromium/base/ApplicationStatus;->registerApplicationStateListener(Lcom/android/org/chromium/base/ApplicationStatus$ApplicationStateListener;)V

    goto :goto_0
.end method
