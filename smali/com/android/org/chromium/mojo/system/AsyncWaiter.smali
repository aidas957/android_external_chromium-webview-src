.class public interface abstract Lcom/android/org/chromium/mojo/system/AsyncWaiter;
.super Ljava/lang/Object;
.source "AsyncWaiter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/chromium/mojo/system/AsyncWaiter$Callback;,
        Lcom/android/org/chromium/mojo/system/AsyncWaiter$Cancellable;
    }
.end annotation


# virtual methods
.method public abstract asyncWait(Lcom/android/org/chromium/mojo/system/Handle;Lcom/android/org/chromium/mojo/system/Core$HandleSignals;JLcom/android/org/chromium/mojo/system/AsyncWaiter$Callback;)Lcom/android/org/chromium/mojo/system/AsyncWaiter$Cancellable;
.end method
