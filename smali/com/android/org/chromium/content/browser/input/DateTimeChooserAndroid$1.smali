.class Lcom/android/org/chromium/content/browser/input/DateTimeChooserAndroid$1;
.super Ljava/lang/Object;
.source "DateTimeChooserAndroid.java"

# interfaces
.implements Lcom/android/org/chromium/ui/picker/InputDialogContainer$InputActionDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/chromium/content/browser/input/DateTimeChooserAndroid;-><init>(Landroid/content/Context;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/chromium/content/browser/input/DateTimeChooserAndroid;


# direct methods
.method constructor <init>(Lcom/android/org/chromium/content/browser/input/DateTimeChooserAndroid;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/org/chromium/content/browser/input/DateTimeChooserAndroid$1;->this$0:Lcom/android/org/chromium/content/browser/input/DateTimeChooserAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelDateTimeDialog()V
    .locals 4

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/input/DateTimeChooserAndroid$1;->this$0:Lcom/android/org/chromium/content/browser/input/DateTimeChooserAndroid;

    iget-object v1, p0, Lcom/android/org/chromium/content/browser/input/DateTimeChooserAndroid$1;->this$0:Lcom/android/org/chromium/content/browser/input/DateTimeChooserAndroid;

    # getter for: Lcom/android/org/chromium/content/browser/input/DateTimeChooserAndroid;->mNativeDateTimeChooserAndroid:J
    invoke-static {v1}, Lcom/android/org/chromium/content/browser/input/DateTimeChooserAndroid;->access$000(Lcom/android/org/chromium/content/browser/input/DateTimeChooserAndroid;)J

    move-result-wide v2

    # invokes: Lcom/android/org/chromium/content/browser/input/DateTimeChooserAndroid;->nativeCancelDialog(J)V
    invoke-static {v0, v2, v3}, Lcom/android/org/chromium/content/browser/input/DateTimeChooserAndroid;->access$200(Lcom/android/org/chromium/content/browser/input/DateTimeChooserAndroid;J)V

    .line 39
    return-void
.end method

.method public replaceDateTime(D)V
    .locals 5
    .param p1, "value"    # D

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/input/DateTimeChooserAndroid$1;->this$0:Lcom/android/org/chromium/content/browser/input/DateTimeChooserAndroid;

    iget-object v1, p0, Lcom/android/org/chromium/content/browser/input/DateTimeChooserAndroid$1;->this$0:Lcom/android/org/chromium/content/browser/input/DateTimeChooserAndroid;

    # getter for: Lcom/android/org/chromium/content/browser/input/DateTimeChooserAndroid;->mNativeDateTimeChooserAndroid:J
    invoke-static {v1}, Lcom/android/org/chromium/content/browser/input/DateTimeChooserAndroid;->access$000(Lcom/android/org/chromium/content/browser/input/DateTimeChooserAndroid;)J

    move-result-wide v2

    # invokes: Lcom/android/org/chromium/content/browser/input/DateTimeChooserAndroid;->nativeReplaceDateTime(JD)V
    invoke-static {v0, v2, v3, p1, p2}, Lcom/android/org/chromium/content/browser/input/DateTimeChooserAndroid;->access$100(Lcom/android/org/chromium/content/browser/input/DateTimeChooserAndroid;JD)V

    .line 34
    return-void
.end method
