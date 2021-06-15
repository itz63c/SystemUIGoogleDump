.class abstract Lcom/android/systemui/globalactions/GlobalActionsDialogLite$SinglePressAction;
.super Ljava/lang/Object;
.source "GlobalActionsDialogLite.java"

# interfaces
.implements Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialogLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "SinglePressAction"
.end annotation


# instance fields
.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mIconResId:I

.field private final mMessage:Ljava/lang/CharSequence;

.field private final mMessageResId:I

.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;II)V
    .locals 0

    .line 1590
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$SinglePressAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1591
    iput p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$SinglePressAction;->mIconResId:I

    .line 1592
    iput p3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$SinglePressAction;->mMessageResId:I

    const/4 p1, 0x0

    .line 1593
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 1594
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method protected constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1597
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$SinglePressAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1598
    iput p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$SinglePressAction;->mIconResId:I

    const/4 p1, 0x0

    .line 1599
    iput p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$SinglePressAction;->mMessageResId:I

    .line 1600
    iput-object p4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 1601
    iput-object p3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 1

    .line 1641
    iget-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$SinglePressAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    invoke-virtual {p2}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->getGridItemLayoutResource()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p4, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1643
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setId(I)V

    const p3, 0x1020006

    .line 1645
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const p4, 0x102000b

    .line 1646
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    const/4 v0, 0x1

    .line 1647
    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1649
    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$SinglePressAction;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1650
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1652
    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    if-eqz p1, :cond_0

    .line 1653
    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1655
    :cond_0
    iget p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$SinglePressAction;->mMessageResId:I

    invoke-virtual {p4, p0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-object p2
.end method

.method public getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1632
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    return-object v0

    .line 1635
    :cond_0
    iget p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$SinglePressAction;->mIconResId:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getMessage()Ljava/lang/CharSequence;
    .locals 0

    .line 1627
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getMessageResId()I
    .locals 0

    .line 1623
    iget p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$SinglePressAction;->mMessageResId:I

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
