.class public interface abstract Lcom/android/org/chromium/content/browser/input/PopupTouchHandleDrawable$PopupTouchHandleDrawableDelegate;
.super Ljava/lang/Object;
.source "PopupTouchHandleDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/chromium/content/browser/input/PopupTouchHandleDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PopupTouchHandleDrawableDelegate"
.end annotation


# virtual methods
.method public abstract getParent()Landroid/view/View;
.end method

.method public abstract getParentPositionObserver()Lcom/android/org/chromium/content/browser/PositionObserver;
.end method

.method public abstract isScrollInProgress()Z
.end method

.method public abstract onTouchHandleEvent(Landroid/view/MotionEvent;)Z
.end method
