.class Lcom/android/webview/chromium/WebStorageAdapter$1$1;
.super Landroid/webkit/WebStorage$Origin;
.source "WebStorageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/webview/chromium/WebStorageAdapter$1;->onReceiveValue(Lcom/android/org/chromium/android_webview/AwQuotaManagerBridge$Origins;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/webview/chromium/WebStorageAdapter$1;


# direct methods
.method constructor <init>(Lcom/android/webview/chromium/WebStorageAdapter$1;Ljava/lang/String;JJ)V
    .locals 7
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # J
    .param p5, "x2"    # J

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/webview/chromium/WebStorageAdapter$1$1;->this$1:Lcom/android/webview/chromium/WebStorageAdapter$1;

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebStorage$Origin;-><init>(Ljava/lang/String;JJ)V

    return-void
.end method
