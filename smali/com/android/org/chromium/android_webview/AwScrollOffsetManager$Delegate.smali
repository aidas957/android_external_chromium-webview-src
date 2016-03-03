.class public interface abstract Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;
.super Ljava/lang/Object;
.source "AwScrollOffsetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Delegate"
.end annotation


# virtual methods
.method public abstract getContainerViewScrollX()I
.end method

.method public abstract getContainerViewScrollY()I
.end method

.method public abstract invalidate()V
.end method

.method public abstract overScrollContainerViewBy(IIIIIIZ)V
.end method

.method public abstract scrollContainerViewTo(II)V
.end method

.method public abstract scrollNativeTo(II)V
.end method
