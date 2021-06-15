.class public final Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;
.super Ljava/lang/Object;
.source "BcSmartSpaceUtil.java"


# static fields
.field private static sFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private static sIntentStarter:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$IntentStarter;


# direct methods
.method public static synthetic $r8$lambda$4oZOoUWe7Yz2gkq8-YrcJu62BAA(Lcom/google/android/systemui/smartspace/BcSmartspaceCard;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->lambda$applyParentCardLongClickListener$1(Lcom/google/android/systemui/smartspace/BcSmartspaceCard;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$pF3BUC1agVsehUiTfv-Gt35rdDQ(Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$IntentStarter;Landroid/app/smartspace/SmartspaceAction;Landroid/view/View$OnClickListener;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Ljava/lang/String;Landroid/app/smartspace/SmartspaceTarget;Landroid/view/View;)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->lambda$setOnClickListener$0(Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$IntentStarter;Landroid/app/smartspace/SmartspaceAction;Landroid/view/View$OnClickListener;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Ljava/lang/String;Landroid/app/smartspace/SmartspaceTarget;Landroid/view/View;)V

    return-void
.end method

.method private static applyParentCardLongClickListener(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    .line 135
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "Can\'t apply parent long click listener - no parent!"

    .line 137
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 140
    :cond_0
    instance-of v1, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    if-nez v1, :cond_1

    .line 141
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "Can\'t apply parent long click listener - no parent card!"

    .line 143
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 147
    :cond_1
    check-cast v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    .line 148
    new-instance p1, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil$$ExternalSyntheticLambda1;

    invoke-direct {p1, v0}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/smartspace/BcSmartspaceCard;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private static defaultIntentStarter(Ljava/lang/String;)Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$IntentStarter;
    .locals 1

    .line 178
    new-instance v0, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil$1;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 159
    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 162
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 165
    throw p1
.end method

.method public static getIconDrawable(Landroid/graphics/drawable/Icon;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 121
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_1

    .line 122
    :cond_2
    :goto_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object p0, v0

    :goto_1
    if-eqz p0, :cond_3

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/bcsmartspace/R$dimen;->enhanced_smartspace_icon_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/4 v0, 0x0

    .line 129
    invoke-virtual {p0, v0, v0, p1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    return-object p0
.end method

.method public static getLoggingCardType(I)I
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p0, v1, :cond_5

    const/4 v2, 0x2

    if-eq p0, v2, :cond_4

    const/4 v2, 0x3

    if-eq p0, v2, :cond_3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/16 v1, 0xa

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0x9

    return p0

    :pswitch_1
    const/4 p0, 0x7

    return p0

    :pswitch_2
    return v0

    :cond_0
    const/4 p0, 0x5

    return p0

    :cond_1
    const/16 p0, 0xd

    return p0

    :cond_2
    return v2

    :cond_3
    return v1

    :cond_4
    return v2

    :cond_5
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getLoggingDisplaySurface(Ljava/lang/String;F)I
    .locals 2

    .line 241
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const-string v0, "com.google.android.apps.nexuslauncher"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.android.systemui"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    float-to-double p0, p1

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    cmpl-double p0, p0, v0

    if-lez p0, :cond_1

    const/4 p0, 0x3

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    :goto_0
    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static getTextColorPrimary(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 1

    const v0, 0x1010036

    .line 154
    invoke-static {p0, v0}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static isLoggable(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x2

    .line 201
    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$applyParentCardLongClickListener$1(Lcom/google/android/systemui/smartspace/BcSmartspaceCard;Landroid/view/View;)Z
    .locals 0

    .line 149
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOnLongClickListener()Landroid/view/View$OnLongClickListener;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$setOnClickListener$0(Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$IntentStarter;Landroid/app/smartspace/SmartspaceAction;Landroid/view/View$OnClickListener;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Ljava/lang/String;Landroid/app/smartspace/SmartspaceTarget;Landroid/view/View;)V
    .locals 1

    .line 81
    sget-object v0, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;->SMARTSPACE_CARD_CLICK:Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    invoke-static {v0, p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceLogger;->log(Lcom/google/android/systemui/smartspace/EventEnum;Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo;)V

    .line 83
    sget-object p0, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->sFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTap(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 88
    :cond_0
    invoke-interface {p1, p2, p7}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$IntentStarter;->startFromAction(Landroid/app/smartspace/SmartspaceAction;Landroid/view/View;)V

    if-eqz p3, :cond_1

    .line 91
    invoke-interface {p3, p7}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    if-nez p4, :cond_2

    const-string p0, "Cannot notify target interaction smartspace event: event notifier null."

    .line 95
    invoke-static {p5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 98
    :cond_2
    new-instance p0, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;

    invoke-direct {p0, v0}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;-><init>(I)V

    .line 100
    invoke-virtual {p0, p6}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->setSmartspaceTarget(Landroid/app/smartspace/SmartspaceTarget;)Landroid/app/smartspace/SmartspaceTargetEvent$Builder;

    move-result-object p0

    .line 101
    invoke-virtual {p2}, Landroid/app/smartspace/SmartspaceAction;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->setSmartspaceActionId(Ljava/lang/String;)Landroid/app/smartspace/SmartspaceTargetEvent$Builder;

    move-result-object p0

    .line 102
    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->build()Landroid/app/smartspace/SmartspaceTargetEvent;

    move-result-object p0

    .line 98
    invoke-interface {p4, p0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;->notifySmartspaceEvent(Landroid/app/smartspace/SmartspaceTargetEvent;)V

    :goto_0
    return-void
.end method

.method public static setFalsingManager(Lcom/android/systemui/plugins/FalsingManager;)V
    .locals 0

    .line 170
    sput-object p0, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->sFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    return-void
.end method

.method public static setIntentStarter(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$IntentStarter;)V
    .locals 0

    .line 174
    sput-object p0, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->sIntentStarter:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$IntentStarter;

    return-void
.end method

.method public static setOnClickListener(Landroid/view/View;Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/SmartspaceAction;Landroid/view/View$OnClickListener;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Ljava/lang/String;Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo;)V
    .locals 9

    if-eqz p0, :cond_3

    if-eqz p2, :cond_3

    .line 73
    invoke-virtual {p2}, Landroid/app/smartspace/SmartspaceAction;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/app/smartspace/SmartspaceAction;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    sget-object v0, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->sIntentStarter:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$IntentStarter;

    if-nez v0, :cond_1

    invoke-static {p5}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->defaultIntentStarter(Ljava/lang/String;)Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$IntentStarter;

    move-result-object v0

    :cond_1
    move-object v3, v0

    .line 80
    new-instance v0, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil$$ExternalSyntheticLambda0;

    move-object v1, v0

    move-object v2, p6

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$IntentStarter;Landroid/app/smartspace/SmartspaceAction;Landroid/view/View$OnClickListener;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Ljava/lang/String;Landroid/app/smartspace/SmartspaceTarget;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    instance-of p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    if-nez p1, :cond_2

    .line 109
    invoke-static {p0, p5}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->applyParentCardLongClickListener(Landroid/view/View;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    const-string p0, "No tap action can be set up"

    .line 74
    invoke-static {p5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setOnClickListener(Landroid/view/View;Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/SmartspaceAction;Ljava/lang/String;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo;)V
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p3

    move-object v6, p5

    .line 52
    invoke-static/range {v0 .. v6}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->setOnClickListener(Landroid/view/View;Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/SmartspaceAction;Landroid/view/View$OnClickListener;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Ljava/lang/String;Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo;)V

    return-void
.end method
