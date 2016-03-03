.class Lcom/android/org/chromium/ui/ColorPickerDialog$1;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/chromium/ui/ColorPickerDialog;-><init>(Landroid/content/Context;Lcom/android/org/chromium/ui/OnColorChangedListener;I[Lcom/android/org/chromium/ui/ColorSuggestion;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/chromium/ui/ColorPickerDialog;


# direct methods
.method constructor <init>(Lcom/android/org/chromium/ui/ColorPickerDialog;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/org/chromium/ui/ColorPickerDialog$1;->this$0:Lcom/android/org/chromium/ui/ColorPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/org/chromium/ui/ColorPickerDialog$1;->this$0:Lcom/android/org/chromium/ui/ColorPickerDialog;

    iget-object v1, p0, Lcom/android/org/chromium/ui/ColorPickerDialog$1;->this$0:Lcom/android/org/chromium/ui/ColorPickerDialog;

    # getter for: Lcom/android/org/chromium/ui/ColorPickerDialog;->mCurrentColor:I
    invoke-static {v1}, Lcom/android/org/chromium/ui/ColorPickerDialog;->access$000(Lcom/android/org/chromium/ui/ColorPickerDialog;)I

    move-result v1

    # invokes: Lcom/android/org/chromium/ui/ColorPickerDialog;->tryNotifyColorSet(I)V
    invoke-static {v0, v1}, Lcom/android/org/chromium/ui/ColorPickerDialog;->access$100(Lcom/android/org/chromium/ui/ColorPickerDialog;I)V

    .line 70
    return-void
.end method
