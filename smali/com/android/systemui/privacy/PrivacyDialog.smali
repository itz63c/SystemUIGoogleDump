.class public final Lcom/android/systemui/privacy/PrivacyDialog;
.super Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.source "PrivacyDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;,
        Lcom/android/systemui/privacy/PrivacyDialog$OnDialogDismissed;,
        Lcom/android/systemui/privacy/PrivacyDialog$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrivacyDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrivacyDialog.kt\ncom/android/systemui/privacy/PrivacyDialog\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,202:1\n1819#2,2:203\n*E\n*S KotlinDebug\n*F\n+ 1 PrivacyDialog.kt\ncom/android/systemui/privacy/PrivacyDialog\n*L\n74#1,2:203\n*E\n"
.end annotation


# instance fields
.field private final clickListener:Landroid/view/View$OnClickListener;

.field private final dismissListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/privacy/PrivacyDialog$OnDialogDismissed;",
            ">;>;"
        }
    .end annotation
.end field

.field private final dismissed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final enterpriseText:Ljava/lang/String;

.field private final iconColorSolid:I

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;",
            ">;"
        }
    .end annotation
.end field

.field private final phonecall:Ljava/lang/String;

.field private rootView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityStarter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    sget v0, Lcom/android/systemui/R$style;->ScreenRecord:I

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;I)V

    .line 48
    iput-object p2, p0, Lcom/android/systemui/privacy/PrivacyDialog;->list:Ljava/util/List;

    .line 52
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/privacy/PrivacyDialog;->dismissListeners:Ljava/util/List;

    .line 53
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/android/systemui/privacy/PrivacyDialog;->dismissed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x1010433

    .line 55
    invoke-static {p2, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/privacy/PrivacyDialog;->iconColorSolid:I

    .line 58
    sget p2, Lcom/android/systemui/R$string;->ongoing_privacy_dialog_enterprise:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, " "

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/privacy/PrivacyDialog;->enterpriseText:Ljava/lang/String;

    .line 59
    sget p2, Lcom/android/systemui/R$string;->ongoing_privacy_dialog_phonecall:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyDialog;->phonecall:Ljava/lang/String;

    .line 153
    new-instance p1, Lcom/android/systemui/privacy/PrivacyDialog$clickListener$1;

    invoke-direct {p1, p3}, Lcom/android/systemui/privacy/PrivacyDialog$clickListener$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyDialog;->clickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private final createView(Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;)Landroid/view/View;
    .locals 10

    .line 105
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 106
    sget v1, Lcom/android/systemui/R$layout;->privacy_dialog_item:I

    iget-object v2, p0, Lcom/android/systemui/privacy/PrivacyDialog;->rootView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_4

    const/4 v3, 0x0

    .line 105
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewGroup;

    .line 108
    invoke-virtual {p1}, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->getType()Lcom/android/systemui/privacy/PrivacyType;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/privacy/PrivacyDialog;->getDrawableForType(Lcom/android/systemui/privacy/PrivacyType;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v1

    .line 109
    sget v2, Lcom/android/systemui/R$id;->icon:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/privacy/PrivacyDialog;->iconColorSolid:I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 110
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 111
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    invoke-virtual {p1}, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->getType()Lcom/android/systemui/privacy/PrivacyType;

    move-result-object v1

    invoke-virtual {v2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "context"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/android/systemui/privacy/PrivacyType;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 114
    invoke-virtual {p1}, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->getActive()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/privacy/PrivacyDialog;->getStringIdForState(Z)I

    move-result v1

    .line 115
    invoke-virtual {p1}, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->getPhoneCall()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/privacy/PrivacyDialog;->phonecall:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->getApplicationName()Ljava/lang/CharSequence;

    move-result-object v2

    .line 116
    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->getEnterprise()Z

    move-result v4

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v4, :cond_1

    new-array v4, v6, [Ljava/lang/CharSequence;

    aput-object v2, v4, v3

    .line 117
    iget-object v2, p0, Lcom/android/systemui/privacy/PrivacyDialog;->enterpriseText:Ljava/lang/String;

    aput-object v2, v4, v7

    invoke-static {v4}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 121
    :cond_1
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    new-array v8, v6, [Ljava/lang/Object;

    aput-object v2, v8, v3

    invoke-virtual {p1}, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->getType()Lcom/android/systemui/privacy/PrivacyType;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Lcom/android/systemui/privacy/PrivacyType;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v7

    invoke-virtual {v4, v1, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-virtual {p1}, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->getAttribution()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/CharSequence;

    aput-object v1, v4, v3

    const-string v5, " "

    aput-object v5, v4, v7

    .line 126
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v8, Lcom/android/systemui/R$string;->ongoing_privacy_dialog_attribution_text:I

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v3

    invoke-virtual {v5, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v6

    .line 123
    invoke-static {v4}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, v2

    .line 129
    :goto_1
    sget v2, Lcom/android/systemui/R$id;->text:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 132
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyDialog;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0

    :cond_4
    const-string p0, "rootView"

    .line 106
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final getDrawableForType(Lcom/android/systemui/privacy/PrivacyType;)Landroid/graphics/drawable/LayerDrawable;
    .locals 1

    .line 146
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/privacy/PrivacyDialog$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 149
    sget p1, Lcom/android/systemui/R$drawable;->privacy_item_circle_microphone:I

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 148
    :cond_1
    sget p1, Lcom/android/systemui/R$drawable;->privacy_item_circle_camera:I

    goto :goto_0

    .line 147
    :cond_2
    sget p1, Lcom/android/systemui/R$drawable;->privacy_item_circle_location:I

    .line 146
    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type android.graphics.drawable.LayerDrawable"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    return-object p0
.end method

.method private final getStringIdForState(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 139
    sget p0, Lcom/android/systemui/R$string;->ongoing_privacy_dialog_using_op:I

    goto :goto_0

    .line 141
    :cond_0
    sget p0, Lcom/android/systemui/R$string;->ongoing_privacy_dialog_recent_op:I

    :goto_0
    return p0
.end method


# virtual methods
.method public final addOnDismissListener(Lcom/android/systemui/privacy/PrivacyDialog$OnDialogDismissed;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyDialog;->dismissed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-interface {p1}, Lcom/android/systemui/privacy/PrivacyDialog$OnDialogDismissed;->onDialogDismissed()V

    goto :goto_0

    .line 89
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyDialog;->dismissListeners:Ljava/util/List;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 64
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 67
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->qs_panel_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, -0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    const/16 v0, 0x31

    .line 68
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 71
    :goto_0
    sget p1, Lcom/android/systemui/R$layout;->privacy_dialog:I

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setContentView(I)V

    .line 72
    sget p1, Lcom/android/systemui/R$id;->root:I

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "requireViewById<ViewGroup>(R.id.root)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyDialog;->rootView:Landroid/view/ViewGroup;

    .line 74
    iget-object p1, p0, Lcom/android/systemui/privacy/PrivacyDialog;->list:Ljava/util/List;

    .line 1819
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;

    .line 75
    iget-object v1, p0, Lcom/android/systemui/privacy/PrivacyDialog;->rootView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/systemui/privacy/PrivacyDialog;->createView(Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    const-string p0, "rootView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 94
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->onStop()V

    .line 95
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyDialog;->dismissed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 96
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyDialog;->dismissListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 97
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 99
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 100
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/privacy/PrivacyDialog$OnDialogDismissed;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/android/systemui/privacy/PrivacyDialog$OnDialogDismissed;->onDialogDismissed()V

    goto :goto_0

    :cond_1
    return-void
.end method
