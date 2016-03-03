.class Lcom/android/org/chromium/android_webview/AwContents$7;
.super Ljava/lang/Object;
.source "AwContents.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/chromium/android_webview/AwContents;->saveWebArchiveInternal(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/chromium/android_webview/AwContents;

.field final synthetic val$callback:Landroid/webkit/ValueCallback;


# direct methods
.method constructor <init>(Lcom/android/org/chromium/android_webview/AwContents;Landroid/webkit/ValueCallback;)V
    .locals 0

    .prologue
    .line 2241
    iput-object p1, p0, Lcom/android/org/chromium/android_webview/AwContents$7;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    iput-object p2, p0, Lcom/android/org/chromium/android_webview/AwContents$7;->val$callback:Landroid/webkit/ValueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2244
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$7;->val$callback:Landroid/webkit/ValueCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 2245
    return-void
.end method
