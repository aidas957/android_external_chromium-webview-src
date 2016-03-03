.class public interface abstract Lcom/android/org/chromium/content/browser/ChildProcessConnection;
.super Ljava/lang/Object;
.source "ChildProcessConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/chromium/content/browser/ChildProcessConnection$ConnectionCallback;,
        Lcom/android/org/chromium/content/browser/ChildProcessConnection$DeathCallback;
    }
.end annotation


# virtual methods
.method public abstract addStrongBinding()V
.end method

.method public abstract dropOomBindings()V
.end method

.method public abstract getPid()I
.end method

.method public abstract getServiceNumber()I
.end method

.method public abstract isInSandbox()Z
.end method

.method public abstract isInitialBindingBound()Z
.end method

.method public abstract isOomProtectedOrWasWhenDied()Z
.end method

.method public abstract isStrongBindingBound()Z
.end method

.method public abstract removeInitialBinding()V
.end method

.method public abstract removeStrongBinding()V
.end method

.method public abstract setupConnection([Ljava/lang/String;[Lcom/android/org/chromium/content/browser/FileDescriptorInfo;Lcom/android/org/chromium/content/common/IChildProcessCallback;Lcom/android/org/chromium/content/browser/ChildProcessConnection$ConnectionCallback;Landroid/os/Bundle;)V
.end method

.method public abstract start([Ljava/lang/String;)V
.end method

.method public abstract stop()V
.end method