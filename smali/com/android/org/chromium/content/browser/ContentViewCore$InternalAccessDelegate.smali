.class public interface abstract Lcom/android/org/chromium/content/browser/ContentViewCore$InternalAccessDelegate;
.super Ljava/lang/Object;
.source "ContentViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/chromium/content/browser/ContentViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InternalAccessDelegate"
.end annotation


# virtual methods
.method public abstract onScrollChanged(IIII)V
.end method

.method public abstract super_dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract super_onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract super_onGenericMotionEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract super_onKeyUp(ILandroid/view/KeyEvent;)Z
.end method