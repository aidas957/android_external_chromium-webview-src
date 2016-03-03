.class Lorg/chromium/android_webview/AwAutofillClient$1;
.super Ljava/lang/Object;
.source "AwAutofillClient.java"

# interfaces
.implements Lorg/chromium/ui/autofill/AutofillPopup$AutofillPopupDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/android_webview/AwAutofillClient;->showAutofillPopup(FFFFZ[Lorg/chromium/ui/autofill/AutofillSuggestion;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/android_webview/AwAutofillClient;


# direct methods
.method constructor <init>(Lorg/chromium/android_webview/AwAutofillClient;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lorg/chromium/android_webview/AwAutofillClient$1;->this$0:Lorg/chromium/android_webview/AwAutofillClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismissed()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public suggestionSelected(I)V
    .locals 4
    .param p1, "listIndex"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lorg/chromium/android_webview/AwAutofillClient$1;->this$0:Lorg/chromium/android_webview/AwAutofillClient;

    iget-object v1, p0, Lorg/chromium/android_webview/AwAutofillClient$1;->this$0:Lorg/chromium/android_webview/AwAutofillClient;

    # getter for: Lorg/chromium/android_webview/AwAutofillClient;->mNativeAwAutofillClient:J
    invoke-static {v1}, Lorg/chromium/android_webview/AwAutofillClient;->access$000(Lorg/chromium/android_webview/AwAutofillClient;)J

    move-result-wide v2

    # invokes: Lorg/chromium/android_webview/AwAutofillClient;->nativeSuggestionSelected(JI)V
    invoke-static {v0, v2, v3, p1}, Lorg/chromium/android_webview/AwAutofillClient;->access$100(Lorg/chromium/android_webview/AwAutofillClient;JI)V

    .line 58
    return-void
.end method
