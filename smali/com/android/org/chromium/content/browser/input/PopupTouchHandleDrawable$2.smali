.class Lcom/android/org/chromium/content/browser/input/PopupTouchHandleDrawable$2;
.super Ljava/lang/Object;
.source "PopupTouchHandleDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/chromium/content/browser/input/PopupTouchHandleDrawable;->scheduleInvalidate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/chromium/content/browser/input/PopupTouchHandleDrawable;


# direct methods
.method constructor <init>(Lcom/android/org/chromium/content/browser/input/PopupTouchHandleDrawable;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/org/chromium/content/browser/input/PopupTouchHandleDrawable$2;->this$0:Lcom/android/org/chromium/content/browser/input/PopupTouchHandleDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/input/PopupTouchHandleDrawable$2;->this$0:Lcom/android/org/chromium/content/browser/input/PopupTouchHandleDrawable;

    const/4 v1, 0x0

    # setter for: Lcom/android/org/chromium/content/browser/input/PopupTouchHandleDrawable;->mHasPendingInvalidate:Z
    invoke-static {v0, v1}, Lcom/android/org/chromium/content/browser/input/PopupTouchHandleDrawable;->access$102(Lcom/android/org/chromium/content/browser/input/PopupTouchHandleDrawable;Z)Z

    .line 239
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/input/PopupTouchHandleDrawable$2;->this$0:Lcom/android/org/chromium/content/browser/input/PopupTouchHandleDrawable;

    # invokes: Lcom/android/org/chromium/content/browser/input/PopupTouchHandleDrawable;->doInvalidate()V
    invoke-static {v0}, Lcom/android/org/chromium/content/browser/input/PopupTouchHandleDrawable;->access$200(Lcom/android/org/chromium/content/browser/input/PopupTouchHandleDrawable;)V

    .line 240
    return-void
.end method
