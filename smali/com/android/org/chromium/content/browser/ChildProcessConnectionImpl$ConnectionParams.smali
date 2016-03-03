.class Lcom/android/org/chromium/content/browser/ChildProcessConnectionImpl$ConnectionParams;
.super Ljava/lang/Object;
.source "ChildProcessConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/chromium/content/browser/ChildProcessConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectionParams"
.end annotation


# instance fields
.field final mCallback:Lcom/android/org/chromium/content/common/IChildProcessCallback;

.field final mCommandLine:[Ljava/lang/String;

.field final mFilesToBeMapped:[Lcom/android/org/chromium/content/browser/FileDescriptorInfo;

.field final mSharedRelros:Landroid/os/Bundle;


# direct methods
.method constructor <init>([Ljava/lang/String;[Lcom/android/org/chromium/content/browser/FileDescriptorInfo;Lcom/android/org/chromium/content/common/IChildProcessCallback;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "commandLine"    # [Ljava/lang/String;
    .param p2, "filesToBeMapped"    # [Lcom/android/org/chromium/content/browser/FileDescriptorInfo;
    .param p3, "callback"    # Lcom/android/org/chromium/content/common/IChildProcessCallback;
    .param p4, "sharedRelros"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/android/org/chromium/content/browser/ChildProcessConnectionImpl$ConnectionParams;->mCommandLine:[Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lcom/android/org/chromium/content/browser/ChildProcessConnectionImpl$ConnectionParams;->mFilesToBeMapped:[Lcom/android/org/chromium/content/browser/FileDescriptorInfo;

    .line 83
    iput-object p3, p0, Lcom/android/org/chromium/content/browser/ChildProcessConnectionImpl$ConnectionParams;->mCallback:Lcom/android/org/chromium/content/common/IChildProcessCallback;

    .line 84
    iput-object p4, p0, Lcom/android/org/chromium/content/browser/ChildProcessConnectionImpl$ConnectionParams;->mSharedRelros:Landroid/os/Bundle;

    .line 85
    return-void
.end method
