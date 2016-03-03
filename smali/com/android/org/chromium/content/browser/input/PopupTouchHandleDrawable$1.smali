.class Lcom/android/org/chromium/content/browser/input/PopupTouchHandleDrawable$1;
.super Ljava/lang/Object;
.source "PopupTouchHandleDrawable.java"

# interfaces
.implements Lcom/android/org/chromium/content/browser/PositionObserver$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/chromium/content/browser/input/PopupTouchHandleDrawable;-><init>(Lcom/android/org/chromium/content/browser/input/PopupTouchHandleDrawable$PopupTouchHandleDrawableDelegate;)V
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
    .line 119
    iput-object p1, p0, Lcom/android/org/chromium/content/browser/input/PopupTouchHandleDrawable$1;->this$0:Lcom/android/org/chromium/content/browser/input/PopupTouchHandleDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositionChanged(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/input/PopupTouchHandleDrawable$1;->this$0:Lcom/android/org/chromium/content/browser/input/PopupTouchHandleDrawable;

    # invokes: Lcom/android/org/chromium/content/browser/input/PopupTouchHandleDrawable;->updateParentPosition(II)V
    invoke-static {v0, p1, p2}, Lcom/android/org/chromium/content/browser/input/PopupTouchHandleDrawable;->access$000(Lcom/android/org/chromium/content/browser/input/PopupTouchHandleDrawable;II)V

    .line 123
    return-void
.end method
