.class public Lcom/android/org/chromium/content/browser/MediaDrmCredentialManager;
.super Ljava/lang/Object;
.source "MediaDrmCredentialManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/chromium/content/browser/MediaDrmCredentialManager$MediaDrmCredentialManagerCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method private static native nativeResetCredentials(Lcom/android/org/chromium/content/browser/MediaDrmCredentialManager$MediaDrmCredentialManagerCallback;)V
.end method
