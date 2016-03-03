.class Lcom/android/org/chromium/components/web_contents_delegate_android/ColorChooserAndroid$1;
.super Ljava/lang/Object;
.source "ColorChooserAndroid.java"

# interfaces
.implements Lcom/android/org/chromium/ui/OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/chromium/components/web_contents_delegate_android/ColorChooserAndroid;-><init>(JLandroid/content/Context;I[Lcom/android/org/chromium/ui/ColorSuggestion;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/chromium/components/web_contents_delegate_android/ColorChooserAndroid;


# direct methods
.method constructor <init>(Lcom/android/org/chromium/components/web_contents_delegate_android/ColorChooserAndroid;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/org/chromium/components/web_contents_delegate_android/ColorChooserAndroid$1;->this$0:Lcom/android/org/chromium/components/web_contents_delegate_android/ColorChooserAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorChanged(I)V
    .locals 4
    .param p1, "color"    # I

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/org/chromium/components/web_contents_delegate_android/ColorChooserAndroid$1;->this$0:Lcom/android/org/chromium/components/web_contents_delegate_android/ColorChooserAndroid;

    # getter for: Lcom/android/org/chromium/components/web_contents_delegate_android/ColorChooserAndroid;->mDialog:Lcom/android/org/chromium/ui/ColorPickerDialog;
    invoke-static {v0}, Lcom/android/org/chromium/components/web_contents_delegate_android/ColorChooserAndroid;->access$000(Lcom/android/org/chromium/components/web_contents_delegate_android/ColorChooserAndroid;)Lcom/android/org/chromium/ui/ColorPickerDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/chromium/ui/ColorPickerDialog;->dismiss()V

    .line 32
    iget-object v0, p0, Lcom/android/org/chromium/components/web_contents_delegate_android/ColorChooserAndroid$1;->this$0:Lcom/android/org/chromium/components/web_contents_delegate_android/ColorChooserAndroid;

    iget-object v1, p0, Lcom/android/org/chromium/components/web_contents_delegate_android/ColorChooserAndroid$1;->this$0:Lcom/android/org/chromium/components/web_contents_delegate_android/ColorChooserAndroid;

    # getter for: Lcom/android/org/chromium/components/web_contents_delegate_android/ColorChooserAndroid;->mNativeColorChooserAndroid:J
    invoke-static {v1}, Lcom/android/org/chromium/components/web_contents_delegate_android/ColorChooserAndroid;->access$100(Lcom/android/org/chromium/components/web_contents_delegate_android/ColorChooserAndroid;)J

    move-result-wide v2

    # invokes: Lcom/android/org/chromium/components/web_contents_delegate_android/ColorChooserAndroid;->nativeOnColorChosen(JI)V
    invoke-static {v0, v2, v3, p1}, Lcom/android/org/chromium/components/web_contents_delegate_android/ColorChooserAndroid;->access$200(Lcom/android/org/chromium/components/web_contents_delegate_android/ColorChooserAndroid;JI)V

    .line 33
    return-void
.end method
