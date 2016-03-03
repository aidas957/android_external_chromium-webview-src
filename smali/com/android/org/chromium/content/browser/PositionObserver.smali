.class public interface abstract Lcom/android/org/chromium/content/browser/PositionObserver;
.super Ljava/lang/Object;
.source "PositionObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/chromium/content/browser/PositionObserver$Listener;
    }
.end annotation


# virtual methods
.method public abstract addListener(Lcom/android/org/chromium/content/browser/PositionObserver$Listener;)V
.end method

.method public abstract clearListener()V
.end method

.method public abstract getPositionX()I
.end method

.method public abstract getPositionY()I
.end method

.method public abstract removeListener(Lcom/android/org/chromium/content/browser/PositionObserver$Listener;)V
.end method
