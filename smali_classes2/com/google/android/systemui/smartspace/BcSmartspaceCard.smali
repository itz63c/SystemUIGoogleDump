.class public Lcom/google/android/systemui/smartspace/BcSmartspaceCard;
.super Landroid/widget/LinearLayout;
.source "BcSmartspaceCard.java"


# instance fields
.field private mDndImageView:Landroid/widget/ImageView;

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconTintColor:I

.field private mNextAlarmImageView:Landroid/widget/ImageView;

.field private mNextAlarmTextView:Landroid/widget/TextView;

.field private mSecondaryCard:Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;

.field private mSpacerDot:Landroid/widget/ImageView;

.field private mTarget:Landroid/app/smartspace/SmartspaceTarget;

.field private mUseDot:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mSecondaryCard:Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;

    .line 39
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x1010036

    invoke-static {p2, v0}, Lcom/android/launcher3/icons/GraphicsUtils;->getAttrColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mIconTintColor:I

    .line 42
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mDndImageView:Landroid/widget/ImageView;

    .line 43
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mNextAlarmImageView:Landroid/widget/ImageView;

    .line 44
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mNextAlarmTextView:Landroid/widget/TextView;

    .line 45
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mSpacerDot:Landroid/widget/ImageView;

    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mUseDot:Z

    return-void
.end method

.method private updateZenVisibility()V
    .locals 5

    .line 241
    sget v0, Lcom/android/systemui/bcsmartspace/R$id;->smartspace_extras_group:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 244
    :cond_0
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mDndImageView:Landroid/widget/ImageView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 245
    :goto_0
    iget-object v4, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mNextAlarmImageView:Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    .line 246
    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    const/16 v4, 0x8

    if-nez v1, :cond_3

    if-nez v2, :cond_3

    .line 249
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3

    .line 251
    :cond_3
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 252
    sget v1, Lcom/android/systemui/bcsmartspace/R$id;->spacer_dot:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mSpacerDot:Landroid/widget/ImageView;

    .line 253
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 254
    iget-boolean v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mUseDot:Z

    if-eqz v0, :cond_4

    .line 255
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mSpacerDot:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 257
    :cond_4
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mSpacerDot:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 259
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->updateZenColors()V

    :goto_3
    return-void
.end method


# virtual methods
.method public getTarget()Landroid/app/smartspace/SmartspaceTarget;
    .locals 0

    .line 264
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mTarget:Landroid/app/smartspace/SmartspaceTarget;

    return-object p0
.end method

.method setDnd(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 2

    .line 207
    sget v0, Lcom/android/systemui/bcsmartspace/R$id;->smartspace_extras_group:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 211
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mDndImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 213
    :cond_1
    sget v1, Lcom/android/systemui/bcsmartspace/R$id;->dnd_icon:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mDndImageView:Landroid/widget/ImageView;

    .line 214
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 215
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mDndImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 216
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mDndImageView:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 218
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->updateZenVisibility()V

    return-void
.end method

.method setDozeAmount(F)V
    .locals 4

    .line 114
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    const/high16 v2, 0x437f0000    # 255.0f

    sub-float v3, v1, p1

    mul-float/2addr v3, v2

    float-to-int v2, v3

    .line 116
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mSecondaryCard:Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;

    if-eqz v0, :cond_1

    sub-float/2addr v1, p1

    .line 120
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mDndImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 124
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mDndImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mNextAlarmImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_3

    .line 129
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mSpacerDot:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_3
    return-void
.end method

.method setNextAlarm(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 2

    .line 222
    sget v0, Lcom/android/systemui/bcsmartspace/R$id;->smartspace_extras_group:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_2

    .line 226
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mNextAlarmImageView:Landroid/widget/ImageView;

    const/16 p2, 0x8

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    :cond_1
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mNextAlarmTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 229
    :cond_2
    sget v1, Lcom/android/systemui/bcsmartspace/R$id;->alarm_icon:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mNextAlarmImageView:Landroid/widget/ImageView;

    .line 230
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 231
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mNextAlarmImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 233
    sget p1, Lcom/android/systemui/bcsmartspace/R$id;->alarm_text:I

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mNextAlarmTextView:Landroid/widget/TextView;

    .line 234
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mNextAlarmTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->updateZenVisibility()V

    return-void
.end method

.method setPrimaryTextColor(I)V
    .locals 1

    .line 134
    sget v0, Lcom/android/systemui/bcsmartspace/R$id;->title_text:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 139
    :cond_0
    sget v0, Lcom/android/systemui/bcsmartspace/R$id;->clock:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 144
    :cond_1
    sget v0, Lcom/android/systemui/bcsmartspace/R$id;->subtitle_text:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 146
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    :cond_2
    iput p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mIconTintColor:I

    .line 150
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->updateZenColors()V

    .line 151
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->updateIconTint()V

    return-void
.end method

.method setSecondaryCard(Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;)V
    .locals 5

    .line 94
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mSecondaryCard:Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;

    const/4 v0, 0x1

    .line 96
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    :cond_0
    if-eqz p1, :cond_1

    .line 100
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    .line 101
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/bcsmartspace/R$dimen;->enhanced_smartspace_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 102
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 103
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/bcsmartspace/R$dimen;->enhanced_smartspace_secondary_card_start_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 106
    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method setSmartspaceTarget(Landroid/app/smartspace/SmartspaceTarget;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo;)V
    .locals 9

    .line 60
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mTarget:Landroid/app/smartspace/SmartspaceTarget;

    .line 61
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getHeaderAction()Landroid/app/smartspace/SmartspaceAction;

    move-result-object v0

    .line 62
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    move-result-object v3

    if-eqz v0, :cond_9

    if-eqz v3, :cond_9

    .line 65
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mSecondaryCard:Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 66
    invoke-virtual {v1, p1, p2, p3}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;->setSmartspaceActions(Landroid/app/smartspace/SmartspaceTarget;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo;)Z

    move-result v1

    .line 68
    iget-object v4, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mSecondaryCard:Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;

    if-eqz v1, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    const/16 v5, 0x8

    :goto_0
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    :cond_1
    move v1, v2

    .line 70
    :goto_1
    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getIconDrawable(Landroid/graphics/drawable/Icon;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 72
    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    .line 73
    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceAction;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 75
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    if-eqz v4, :cond_2

    .line 76
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_2

    goto :goto_2

    :cond_2
    move v5, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v5, v6

    :goto_3
    if-eqz v0, :cond_4

    .line 77
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_4

    move v7, v6

    goto :goto_4

    :cond_4
    move v7, v2

    :goto_4
    if-eqz v7, :cond_5

    .line 78
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    move-result v8

    if-ne v8, v6, :cond_5

    move v8, v6

    goto :goto_5

    :cond_5
    move v8, v2

    :goto_5
    iput-boolean v8, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mUseDot:Z

    .line 80
    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->updateZenVisibility()V

    if-eqz v5, :cond_6

    goto :goto_6

    :cond_6
    move-object v4, v0

    :goto_6
    if-eq v5, v7, :cond_7

    move v2, v6

    .line 81
    :cond_7
    invoke-virtual {p0, v4, v1, v2}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->setTitle(Ljava/lang/CharSequence;ZZ)V

    if-eqz v5, :cond_8

    if-eqz v7, :cond_8

    .line 86
    invoke-virtual {p0, v0}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_8
    const-string v4, "BcSmartspaceCard"

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    .line 88
    invoke-static/range {v1 .. v6}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->setOnClickListener(Landroid/view/View;Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/SmartspaceAction;Ljava/lang/String;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo;)V

    :cond_9
    return-void
.end method

.method setSubtitle(Ljava/lang/CharSequence;)V
    .locals 2

    .line 168
    sget v0, Lcom/android/systemui/bcsmartspace/R$id;->subtitle_text:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string p0, "BcSmartspaceCard"

    const-string p1, "No subtitle view to update"

    .line 170
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 173
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 176
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->updateIconTint()V

    return-void
.end method

.method setTitle(Ljava/lang/CharSequence;ZZ)V
    .locals 1

    .line 155
    sget v0, Lcom/android/systemui/bcsmartspace/R$id;->title_text:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string p0, "BcSmartspaceCard"

    const-string p1, "No title view to update"

    .line 157
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 160
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_1

    .line 162
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1, p1, p1}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    if-eqz p2, :cond_2

    const/4 p0, 0x2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    .line 164
    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setMaxLines(I)V

    return-void
.end method

.method updateIconTint()V
    .locals 2

    .line 182
    sget v0, Lcom/android/systemui/bcsmartspace/R$id;->clock:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 183
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 184
    iget p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mIconTintColor:I

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_0
    return-void
.end method

.method updateZenColors()V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mNextAlarmImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 190
    iget v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mIconTintColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mNextAlarmTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 194
    iget v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mIconTintColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mDndImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 198
    iget v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mIconTintColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mSpacerDot:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 202
    iget p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mIconTintColor:I

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_3
    return-void
.end method

.method public useBackground(ZI)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 270
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/bcsmartspace/R$drawable;->bg_smartspace_card:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 271
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 272
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    const v4, 0x101030e

    aput v4, v3, v0

    .line 273
    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 274
    invoke-virtual {v2, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 271
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    if-eqz p1, :cond_1

    .line 276
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/bcsmartspace/R$dimen;->enhanced_smartspace_card_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 279
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/bcsmartspace/R$dimen;->enhanced_smartspace_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    if-eqz p1, :cond_2

    mul-int/lit8 v3, v0, 0x2

    sub-int/2addr v2, v3

    .line 285
    :cond_2
    invoke-virtual {p0, p2}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->setPrimaryTextColor(I)V

    .line 286
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 287
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    .line 288
    iget-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mSecondaryCard:Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;

    if-eqz p2, :cond_3

    .line 289
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput v2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 290
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mSecondaryCard:Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;->fitToSize(Z)V

    :cond_3
    return-void
.end method
