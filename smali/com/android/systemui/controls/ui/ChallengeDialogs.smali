.class public final Lcom/android/systemui/controls/ui/ChallengeDialogs;
.super Ljava/lang/Object;
.source "ChallengeDialogs.kt"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/controls/ui/ChallengeDialogs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/controls/ui/ChallengeDialogs;

    invoke-direct {v0}, Lcom/android/systemui/controls/ui/ChallengeDialogs;-><init>()V

    sput-object v0, Lcom/android/systemui/controls/ui/ChallengeDialogs;->INSTANCE:Lcom/android/systemui/controls/ui/ChallengeDialogs;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$addChallengeValue(Lcom/android/systemui/controls/ui/ChallengeDialogs;Landroid/service/controls/actions/ControlAction;Ljava/lang/String;)Landroid/service/controls/actions/ControlAction;
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/controls/ui/ChallengeDialogs;->addChallengeValue(Landroid/service/controls/actions/ControlAction;Ljava/lang/String;)Landroid/service/controls/actions/ControlAction;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setInputType(Lcom/android/systemui/controls/ui/ChallengeDialogs;Landroid/widget/EditText;Z)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/controls/ui/ChallengeDialogs;->setInputType(Landroid/widget/EditText;Z)V

    return-void
.end method

.method private final addChallengeValue(Landroid/service/controls/actions/ControlAction;Ljava/lang/String;)Landroid/service/controls/actions/ControlAction;
    .locals 1

    .line 173
    invoke-virtual {p1}, Landroid/service/controls/actions/ControlAction;->getTemplateId()Ljava/lang/String;

    move-result-object p0

    .line 175
    instance-of v0, p1, Landroid/service/controls/actions/BooleanAction;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/service/controls/actions/BooleanAction;

    check-cast p1, Landroid/service/controls/actions/BooleanAction;

    invoke-virtual {p1}, Landroid/service/controls/actions/BooleanAction;->getNewState()Z

    move-result p1

    invoke-direct {v0, p0, p1, p2}, Landroid/service/controls/actions/BooleanAction;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 176
    :cond_0
    instance-of v0, p1, Landroid/service/controls/actions/FloatAction;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/service/controls/actions/FloatAction;

    check-cast p1, Landroid/service/controls/actions/FloatAction;

    invoke-virtual {p1}, Landroid/service/controls/actions/FloatAction;->getNewValue()F

    move-result p1

    invoke-direct {v0, p0, p1, p2}, Landroid/service/controls/actions/FloatAction;-><init>(Ljava/lang/String;FLjava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_1
    instance-of v0, p1, Landroid/service/controls/actions/CommandAction;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/service/controls/actions/CommandAction;

    invoke-direct {v0, p0, p2}, Landroid/service/controls/actions/CommandAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_2
    instance-of v0, p1, Landroid/service/controls/actions/ModeAction;

    if-eqz v0, :cond_3

    new-instance v0, Landroid/service/controls/actions/ModeAction;

    check-cast p1, Landroid/service/controls/actions/ModeAction;

    invoke-virtual {p1}, Landroid/service/controls/actions/ModeAction;->getNewMode()I

    move-result p1

    invoke-direct {v0, p0, p1, p2}, Landroid/service/controls/actions/ModeAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-object v0

    .line 179
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p2, "\'action\' is not a known type: "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final setInputType(Landroid/widget/EditText;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/16 p0, 0x81

    .line 164
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x12

    .line 167
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setInputType(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final createConfirmationDialog(Lcom/android/systemui/controls/ui/ControlViewHolder;Lkotlin/jvm/functions/Function0;)Landroid/app/Dialog;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/controls/ui/ControlViewHolder;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Landroid/app/Dialog;"
        }
    .end annotation

    const-string p0, "cvh"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "onCancel"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getLastAction()Landroid/service/controls/actions/ControlAction;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "ControlsUiController"

    const-string p1, "Confirmation Dialog attempted but no last action is set. Will not show"

    .line 133
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 137
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10302d1

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 138
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 140
    sget v2, Lcom/android/systemui/R$string;->controls_confirmation_message:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    .line 139
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    .line 143
    new-instance v2, Lcom/android/systemui/controls/ui/ChallengeDialogs$createConfirmationDialog$builder$1$1;

    invoke-direct {v2, p1, p0}, Lcom/android/systemui/controls/ui/ChallengeDialogs$createConfirmationDialog$builder$1$1;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;Landroid/service/controls/actions/ControlAction;)V

    .line 141
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 p0, 0x1040000

    .line 149
    new-instance p1, Lcom/android/systemui/controls/ui/ChallengeDialogs$createConfirmationDialog$builder$1$2;

    invoke-direct {p1, p2}, Lcom/android/systemui/controls/ui/ChallengeDialogs$createConfirmationDialog$builder$1$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 147
    invoke-virtual {v0, p0, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 155
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 156
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x7e4

    .line 157
    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    return-object p0
.end method

.method public final createPinDialog(Lcom/android/systemui/controls/ui/ControlViewHolder;ZZLkotlin/jvm/functions/Function0;)Landroid/app/Dialog;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/controls/ui/ControlViewHolder;",
            "ZZ",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Landroid/app/Dialog;"
        }
    .end annotation

    const-string p0, "cvh"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "onCancel"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getLastAction()Landroid/service/controls/actions/ControlAction;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "ControlsUiController"

    const-string p1, "PIN Dialog attempted but no last action is set. Will not show"

    .line 60
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 64
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p3, :cond_1

    .line 66
    new-instance p3, Lkotlin/Pair;

    .line 67
    sget v2, Lcom/android/systemui/R$string;->controls_pin_wrong:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 68
    sget v2, Lcom/android/systemui/R$string;->controls_pin_instructions_retry:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 66
    invoke-direct {p3, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 71
    :cond_1
    new-instance p3, Lkotlin/Pair;

    .line 72
    sget v2, Lcom/android/systemui/R$string;->controls_pin_verify:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 73
    sget v2, Lcom/android/systemui/R$string;->controls_pin_instructions:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 71
    invoke-direct {p3, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 65
    :goto_0
    invoke-virtual {p3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    .line 76
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$1;

    invoke-direct {v3, v2}, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$1;-><init>(Landroid/content/Context;)V

    .line 86
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$layout;->controls_dialog_pin:I

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    const/4 v0, -0x1

    .line 90
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 91
    new-instance v2, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$2$1;

    invoke-direct {v2, p1, p0}, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$2$1;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;Landroid/service/controls/actions/ControlAction;)V

    .line 88
    invoke-virtual {v3, v0, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p0, -0x2

    .line 102
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x1040000

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 103
    new-instance v0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$2$2;

    invoke-direct {v0, p4}, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$2$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 100
    invoke-virtual {v3, p0, p1, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 109
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x7e4

    .line 110
    invoke-virtual {p0, p1}, Landroid/view/Window;->setType(I)V

    const/4 p1, 0x4

    .line 111
    invoke-virtual {p0, p1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 113
    new-instance p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$2$4;

    invoke-direct {p0, v3, p3, p2}, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$2$4;-><init>(Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$1;IZ)V

    invoke-virtual {v3, p0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object v3
.end method
