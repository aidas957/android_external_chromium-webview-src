.class final Lcom/android/org/chromium/content/browser/ChildProcessLauncher$1;
.super Ljava/lang/Object;
.source "ChildProcessLauncher.java"

# interfaces
.implements Lcom/android/org/chromium/content/browser/ChildProcessConnection$DeathCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->allocateConnection(Landroid/content/Context;ZLcom/android/org/chromium/content/app/ChromiumLinkerParams;)Lcom/android/org/chromium/content/browser/ChildProcessConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildProcessDied(Lcom/android/org/chromium/content/browser/ChildProcessConnection;)V
    .locals 1
    .param p1, "connection"    # Lcom/android/org/chromium/content/browser/ChildProcessConnection;

    .prologue
    .line 167
    invoke-interface {p1}, Lcom/android/org/chromium/content/browser/ChildProcessConnection;->getPid()I

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-interface {p1}, Lcom/android/org/chromium/content/browser/ChildProcessConnection;->getPid()I

    move-result v0

    invoke-static {v0}, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->stop(I)V

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    # invokes: Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->freeConnection(Lcom/android/org/chromium/content/browser/ChildProcessConnection;)V
    invoke-static {p1}, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->access$000(Lcom/android/org/chromium/content/browser/ChildProcessConnection;)V

    goto :goto_0
.end method
