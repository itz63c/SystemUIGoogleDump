.class final Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$2$4;
.super Ljava/lang/Object;
.source "ChallengeDialogs.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/ChallengeDialogs;->createPinDialog(Lcom/android/systemui/controls/ui/ControlViewHolder;ZZLkotlin/jvm/functions/Function0;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $instructions:I

.field final synthetic $this_anonymous:Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$1;

.field final synthetic $useAlphaNumeric:Z

.field final synthetic this$0:Lcom/android/systemui/controls/ui/ChallengeDialogs;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$1;IZLcom/android/systemui/controls/ui/ChallengeDialogs;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$2$4;->$this_anonymous:Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$1;

    iput p2, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$2$4;->$instructions:I

    iput-boolean p3, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$2$4;->$useAlphaNumeric:Z

    iput-object p4, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$2$4;->this$0:Lcom/android/systemui/controls/ui/ChallengeDialogs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 4

    .line 114
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$2$4;->$this_anonymous:Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$1;

    sget v0, Lcom/android/systemui/R$id;->controls_pin_input:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 115
    iget v0, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$2$4;->$instructions:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(I)V

    .line 116
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$2$4;->$this_anonymous:Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$1;

    sget v1, Lcom/android/systemui/R$id;->controls_pin_use_alpha:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 117
    iget-boolean v2, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$2$4;->$useAlphaNumeric:Z

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 118
    iget-object v2, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$2$4;->this$0:Lcom/android/systemui/controls/ui/ChallengeDialogs;

    const-string v3, "editText"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-static {v2, p1, v3}, Lcom/android/systemui/controls/ui/ChallengeDialogs;->access$setInputType(Lcom/android/systemui/controls/ui/ChallengeDialogs;Landroid/widget/EditText;Z)V

    .line 119
    iget-object v2, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$2$4;->$this_anonymous:Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$1;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    new-instance v2, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$2$4$1;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$2$4;->this$0:Lcom/android/systemui/controls/ui/ChallengeDialogs;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$2$4$1;-><init>(Lcom/android/systemui/controls/ui/ChallengeDialogs;Landroid/widget/EditText;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method
