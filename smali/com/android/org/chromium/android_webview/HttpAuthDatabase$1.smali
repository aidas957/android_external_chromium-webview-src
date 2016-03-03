.class final Lcom/android/org/chromium/android_webview/HttpAuthDatabase$1;
.super Ljava/lang/Thread;
.source "HttpAuthDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/chromium/android_webview/HttpAuthDatabase;->newInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/org/chromium/android_webview/HttpAuthDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$databaseFile:Ljava/lang/String;

.field final synthetic val$httpAuthDatabase:Lcom/android/org/chromium/android_webview/HttpAuthDatabase;


# direct methods
.method constructor <init>(Lcom/android/org/chromium/android_webview/HttpAuthDatabase;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/org/chromium/android_webview/HttpAuthDatabase$1;->val$httpAuthDatabase:Lcom/android/org/chromium/android_webview/HttpAuthDatabase;

    iput-object p2, p0, Lcom/android/org/chromium/android_webview/HttpAuthDatabase$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/org/chromium/android_webview/HttpAuthDatabase$1;->val$databaseFile:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/HttpAuthDatabase$1;->val$httpAuthDatabase:Lcom/android/org/chromium/android_webview/HttpAuthDatabase;

    iget-object v1, p0, Lcom/android/org/chromium/android_webview/HttpAuthDatabase$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/org/chromium/android_webview/HttpAuthDatabase$1;->val$databaseFile:Ljava/lang/String;

    # invokes: Lcom/android/org/chromium/android_webview/HttpAuthDatabase;->initOnBackgroundThread(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/org/chromium/android_webview/HttpAuthDatabase;->access$000(Lcom/android/org/chromium/android_webview/HttpAuthDatabase;Landroid/content/Context;Ljava/lang/String;)V

    .line 70
    return-void
.end method
