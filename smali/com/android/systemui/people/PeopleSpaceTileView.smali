.class public Lcom/android/systemui/people/PeopleSpaceTileView;
.super Landroid/widget/LinearLayout;
.source "PeopleSpaceTileView.java"


# instance fields
.field private mNameView:Landroid/widget/TextView;

.field private mPackageIconView:Landroid/widget/ImageView;

.field private mPersonIconView:Landroid/widget/ImageView;

.field private mStatusView:Landroid/widget/TextView;

.field private mTileView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 2

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/people/PeopleSpaceTileView;->mTileView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 50
    sget v0, Lcom/android/systemui/R$layout;->people_space_tile_view:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/people/PeopleSpaceTileView;->mTileView:Landroid/view/View;

    const/4 v0, -0x1

    .line 51
    invoke-virtual {p2, p1, v0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 53
    iget-object p1, p0, Lcom/android/systemui/people/PeopleSpaceTileView;->mTileView:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 55
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/people/PeopleSpaceTileView;->mTileView:Landroid/view/View;

    sget p2, Lcom/android/systemui/R$id;->tile_view_name:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/people/PeopleSpaceTileView;->mNameView:Landroid/widget/TextView;

    .line 56
    iget-object p1, p0, Lcom/android/systemui/people/PeopleSpaceTileView;->mTileView:Landroid/view/View;

    sget p2, Lcom/android/systemui/R$id;->tile_view_status:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/people/PeopleSpaceTileView;->mStatusView:Landroid/widget/TextView;

    .line 57
    iget-object p1, p0, Lcom/android/systemui/people/PeopleSpaceTileView;->mTileView:Landroid/view/View;

    sget p2, Lcom/android/systemui/R$id;->tile_view_package_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/people/PeopleSpaceTileView;->mPackageIconView:Landroid/widget/ImageView;

    .line 58
    iget-object p1, p0, Lcom/android/systemui/people/PeopleSpaceTileView;->mTileView:Landroid/view/View;

    sget p2, Lcom/android/systemui/R$id;->tile_view_person_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/people/PeopleSpaceTileView;->mPersonIconView:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/people/PeopleSpaceTileView;->mNameView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/systemui/people/PeopleSpaceTileView;->mTileView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setPackageIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/people/PeopleSpaceTileView;->mPackageIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPersonIcon(Landroid/graphics/drawable/Icon;)V
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/systemui/people/PeopleSpaceTileView;->mPersonIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/people/PeopleSpaceTileView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
