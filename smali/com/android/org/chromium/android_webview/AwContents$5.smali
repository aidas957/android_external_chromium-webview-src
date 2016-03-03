.class Lcom/android/org/chromium/android_webview/AwContents$5;
.super Landroid/os/AsyncTask;
.source "AwContents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/chromium/android_webview/AwContents;->saveWebArchive(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/chromium/android_webview/AwContents;

.field final synthetic val$basename:Ljava/lang/String;

.field final synthetic val$callback:Landroid/webkit/ValueCallback;


# direct methods
.method constructor <init>(Lcom/android/org/chromium/android_webview/AwContents;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 0

    .prologue
    .line 1545
    iput-object p1, p0, Lcom/android/org/chromium/android_webview/AwContents$5;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    iput-object p2, p0, Lcom/android/org/chromium/android_webview/AwContents$5;->val$basename:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/org/chromium/android_webview/AwContents$5;->val$callback:Landroid/webkit/ValueCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1545
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/org/chromium/android_webview/AwContents$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1548
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$5;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwContents;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwContents$5;->val$basename:Ljava/lang/String;

    # invokes: Lcom/android/org/chromium/android_webview/AwContents;->generateArchiveAutoNamePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/org/chromium/android_webview/AwContents;->access$3800(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1545
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/org/chromium/android_webview/AwContents$5;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 1553
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$5;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwContents$5;->val$callback:Landroid/webkit/ValueCallback;

    # invokes: Lcom/android/org/chromium/android_webview/AwContents;->saveWebArchiveInternal(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    invoke-static {v0, p1, v1}, Lcom/android/org/chromium/android_webview/AwContents;->access$3900(Lcom/android/org/chromium/android_webview/AwContents;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 1554
    return-void
.end method
