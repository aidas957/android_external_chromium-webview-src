.class Lcom/android/org/chromium/content/browser/ScreenOrientationListener$1;
.super Ljava/lang/Object;
.source "ScreenOrientationListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/chromium/content/browser/ScreenOrientationListener;->addObserver(Lcom/android/org/chromium/content/browser/ScreenOrientationListener$ScreenOrientationObserver;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/chromium/content/browser/ScreenOrientationListener;

.field final synthetic val$obs:Lcom/android/org/chromium/content/browser/ScreenOrientationListener$ScreenOrientationObserver;


# direct methods
.method constructor <init>(Lcom/android/org/chromium/content/browser/ScreenOrientationListener;Lcom/android/org/chromium/content/browser/ScreenOrientationListener$ScreenOrientationObserver;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/org/chromium/content/browser/ScreenOrientationListener$1;->this$0:Lcom/android/org/chromium/content/browser/ScreenOrientationListener;

    iput-object p2, p0, Lcom/android/org/chromium/content/browser/ScreenOrientationListener$1;->val$obs:Lcom/android/org/chromium/content/browser/ScreenOrientationListener$ScreenOrientationObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/ScreenOrientationListener$1;->val$obs:Lcom/android/org/chromium/content/browser/ScreenOrientationListener$ScreenOrientationObserver;

    iget-object v1, p0, Lcom/android/org/chromium/content/browser/ScreenOrientationListener$1;->this$0:Lcom/android/org/chromium/content/browser/ScreenOrientationListener;

    # getter for: Lcom/android/org/chromium/content/browser/ScreenOrientationListener;->mOrientation:I
    invoke-static {v1}, Lcom/android/org/chromium/content/browser/ScreenOrientationListener;->access$500(Lcom/android/org/chromium/content/browser/ScreenOrientationListener;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/org/chromium/content/browser/ScreenOrientationListener$ScreenOrientationObserver;->onScreenOrientationChanged(I)V

    .line 274
    return-void
.end method