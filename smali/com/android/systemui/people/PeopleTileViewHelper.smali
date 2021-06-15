.class public Lcom/android/systemui/people/PeopleTileViewHelper;
.super Ljava/lang/Object;
.source "PeopleTileViewHelper.java"


# static fields
.field private static final ANY_DOUBLE_MARK_PATTERN:Ljava/util/regex/Pattern;

.field private static final DOUBLE_EXCLAMATION_PATTERN:Ljava/util/regex/Pattern;

.field private static final DOUBLE_QUESTION_PATTERN:Ljava/util/regex/Pattern;

.field private static final EMOJI_PATTERN:Ljava/util/regex/Pattern;

.field private static final MIXED_MARK_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private mAppWidgetId:I

.field private mContext:Landroid/content/Context;

.field private mDensity:F

.field private mHeight:I

.field private mIntegerFormat:Ljava/text/NumberFormat;

.field private mKey:Lcom/android/systemui/people/widget/PeopleTileKey;

.field private mLayoutSize:I

.field private mLocale:Ljava/util/Locale;

.field private mMediumVerticalPadding:I

.field private mTile:Landroid/app/people/PeopleSpaceTile;

.field private mWidth:I


# direct methods
.method public static synthetic $r8$lambda$GqVxugecEiQYlAvgRLKt371t5a8(Lcom/android/systemui/people/PeopleTileViewHelper;Landroid/app/people/ConversationStatus;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/people/PeopleTileViewHelper;->lambda$getViewForTile$0(Landroid/app/people/ConversationStatus;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$HC3pfJfh6LHmy_Ntzuw2spQPgjE(Landroid/app/people/ConversationStatus;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->lambda$getPersonIconBitmap$3(Landroid/app/people/ConversationStatus;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$MSgHhMMQZEWSIIiLPK65js7vLH0(Landroid/app/people/ConversationStatus;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->lambda$getBirthdayStatus$2(Landroid/app/people/ConversationStatus;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Ykg8rKRG0JhXkSwxcx94PXmRBSg(Landroid/app/people/ConversationStatus;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->lambda$setCommonRemoteViewsFields$1(Landroid/app/people/ConversationStatus;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[!][!]+"

    .line 107
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/people/PeopleTileViewHelper;->DOUBLE_EXCLAMATION_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "[?][?]+"

    .line 108
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/people/PeopleTileViewHelper;->DOUBLE_QUESTION_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "[!?][!?]+"

    .line 109
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/people/PeopleTileViewHelper;->ANY_DOUBLE_MARK_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "![?].*|.*[?]!"

    .line 110
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/people/PeopleTileViewHelper;->MIXED_MARK_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "\\p{RI}\\p{RI}|(\\p{Emoji}(\\p{EMod}|\\x{FE0F}\\x{20E3}?|[\\x{E0020}-\\x{E007E}]+\\x{E007F})|[\\p{Emoji}&&\\p{So}])(\\x{200D}\\p{Emoji}(\\p{EMod}|\\x{FE0F}\\x{20E3}?|[\\x{E0020}-\\x{E007E}]+\\x{E007F})?)*"

    .line 143
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/people/PeopleTileViewHelper;->EMOJI_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/people/PeopleSpaceTile;ILandroid/os/Bundle;Lcom/android/systemui/people/widget/PeopleTileKey;)V
    .locals 0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    .line 165
    iput-object p2, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    .line 166
    iput-object p5, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mKey:Lcom/android/systemui/people/widget/PeopleTileKey;

    .line 167
    iput p3, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mAppWidgetId:I

    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mDensity:F

    .line 169
    iget-object p1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 171
    sget p3, Lcom/android/systemui/R$dimen;->default_width:I

    .line 172
    invoke-direct {p0, p3}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    move-result p3

    const-string p5, "appWidgetMinWidth"

    .line 171
    invoke-virtual {p4, p5, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p3

    goto :goto_0

    .line 172
    :cond_0
    sget p3, Lcom/android/systemui/R$dimen;->default_width:I

    .line 174
    invoke-direct {p0, p3}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    move-result p3

    const-string p5, "appWidgetMaxWidth"

    .line 172
    invoke-virtual {p4, p5, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p3

    :goto_0
    iput p3, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mWidth:I

    if-ne p1, p2, :cond_1

    .line 175
    sget p1, Lcom/android/systemui/R$dimen;->default_height:I

    .line 177
    invoke-direct {p0, p1}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    move-result p1

    const-string p2, "appWidgetMaxHeight"

    .line 175
    invoke-virtual {p4, p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_1

    .line 178
    :cond_1
    sget p1, Lcom/android/systemui/R$dimen;->default_height:I

    .line 179
    invoke-direct {p0, p1}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    move-result p1

    const-string p2, "appWidgetMinHeight"

    .line 178
    invoke-virtual {p4, p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    :goto_1
    iput p1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mHeight:I

    .line 180
    invoke-direct {p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLayoutSize()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    return-void
.end method

.method private createLastInteractionRemoteViews()Landroid/widget/RemoteViews;
    .locals 6

    .line 753
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getEmptyLayout()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 754
    iget v1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-nez v1, :cond_0

    .line 755
    sget v1, Lcom/android/systemui/R$id;->name:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 756
    sget v1, Lcom/android/systemui/R$id;->predefined_icon:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 757
    sget v1, Lcom/android/systemui/R$id;->messages_count:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 759
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v1}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 760
    sget v1, Lcom/android/systemui/R$id;->name:I

    iget-object v4, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v4}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 762
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    .line 763
    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->getLastInteractionTimestamp()J

    move-result-wide v4

    .line 762
    invoke-static {v1, v4, v5}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLastInteractionString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    const-string v1, "PeopleTileView"

    if-eqz p0, :cond_2

    const-string v3, "Show last interaction"

    .line 765
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    sget v1, Lcom/android/systemui/R$id;->last_interaction:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 767
    invoke-virtual {v0, v1, p0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const-string p0, "Hide last interaction"

    .line 769
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    sget p0, Lcom/android/systemui/R$id;->last_interaction:I

    invoke-virtual {v0, p0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_0
    return-object v0
.end method

.method private createMissedCallRemoteViews()Landroid/widget/RemoteViews;
    .locals 5

    .line 452
    invoke-direct {p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getViewForContentLayout()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 453
    sget v1, Lcom/android/systemui/R$id;->predefined_icon:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 454
    sget v3, Lcom/android/systemui/R$id;->messages_count:I

    const/16 v4, 0x8

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 455
    invoke-direct {p0, v0, v2}, Lcom/android/systemui/people/PeopleTileViewHelper;->setMaxLines(Landroid/widget/RemoteViews;Z)V

    .line 456
    sget v2, Lcom/android/systemui/R$id;->text_content:I

    iget-object p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->getNotificationContent()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 457
    sget p0, Lcom/android/systemui/R$drawable;->ic_phone_missed:I

    invoke-virtual {v0, v1, p0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    return-object v0
.end method

.method private createNotificationRemoteViews()Landroid/widget/RemoteViews;
    .locals 8

    .line 462
    invoke-direct {p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getViewForContentLayout()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 463
    iget-object v1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v1}, Landroid/app/people/PeopleSpaceTile;->getNotificationSender()Ljava/lang/CharSequence;

    move-result-object v1

    .line 464
    iget-object v2, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v2}, Landroid/app/people/PeopleSpaceTile;->getNotificationDataUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eqz v2, :cond_0

    .line 467
    sget v6, Lcom/android/systemui/R$id;->image:I

    invoke-virtual {v0, v6, v2}, Landroid/widget/RemoteViews;->setImageViewUri(ILandroid/net/Uri;)V

    .line 468
    invoke-virtual {v0, v6, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 469
    sget v2, Lcom/android/systemui/R$id;->text_content:I

    invoke-virtual {v0, v2, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 470
    sget v2, Lcom/android/systemui/R$id;->predefined_icon:I

    sget v6, Lcom/android/systemui/R$drawable;->ic_photo_camera:I

    invoke-virtual {v0, v2, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 472
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, v3

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/people/PeopleTileViewHelper;->setMaxLines(Landroid/widget/RemoteViews;Z)V

    .line 473
    iget-object v2, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v2}, Landroid/app/people/PeopleSpaceTile;->getNotificationContent()Ljava/lang/CharSequence;

    move-result-object v2

    .line 474
    invoke-direct {p0, v0, v2}, Lcom/android/systemui/people/PeopleTileViewHelper;->decorateBackground(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 475
    sget v2, Lcom/android/systemui/R$id;->text_content:I

    const v6, 0x1010036

    const-string v7, "setTextColor"

    invoke-virtual {v0, v2, v7, v6}, Landroid/widget/RemoteViews;->setColorAttr(ILjava/lang/String;I)V

    .line 476
    iget-object v6, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v6}, Landroid/app/people/PeopleSpaceTile;->getNotificationContent()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 477
    sget v2, Lcom/android/systemui/R$id;->image:I

    invoke-virtual {v0, v2, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 478
    sget v2, Lcom/android/systemui/R$id;->predefined_icon:I

    sget v6, Lcom/android/systemui/R$drawable;->ic_message:I

    invoke-virtual {v0, v2, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 480
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v2}, Landroid/app/people/PeopleSpaceTile;->getMessagesCount()I

    move-result v2

    if-le v2, v3, :cond_1

    .line 481
    sget v2, Lcom/android/systemui/R$id;->messages_count:I

    invoke-virtual {v0, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 482
    iget-object v3, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    .line 483
    invoke-virtual {v3}, Landroid/app/people/PeopleSpaceTile;->getMessagesCount()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/people/PeopleTileViewHelper;->getMessagesCountText(I)Ljava/lang/String;

    move-result-object v3

    .line 482
    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 484
    iget p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    if-nez p0, :cond_1

    .line 485
    sget p0, Lcom/android/systemui/R$id;->predefined_icon:I

    invoke-virtual {v0, p0, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 488
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 489
    sget p0, Lcom/android/systemui/R$id;->subtext:I

    invoke-virtual {v0, p0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 490
    invoke-virtual {v0, p0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 492
    :cond_2
    sget p0, Lcom/android/systemui/R$id;->subtext:I

    invoke-virtual {v0, p0, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_1
    return-object v0
.end method

.method private createStatusRemoteViews(Landroid/app/people/ConversationStatus;)Landroid/widget/RemoteViews;
    .locals 9

    .line 516
    invoke-direct {p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getViewForContentLayout()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 517
    invoke-virtual {p1}, Landroid/app/people/ConversationStatus;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    .line 518
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 519
    invoke-virtual {p1}, Landroid/app/people/ConversationStatus;->getActivity()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/people/PeopleTileViewHelper;->getStatusTextByType(I)Ljava/lang/String;

    move-result-object v1

    .line 521
    :cond_0
    sget v2, Lcom/android/systemui/R$id;->predefined_icon:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 522
    sget v4, Lcom/android/systemui/R$id;->text_content:I

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 523
    iget v5, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 524
    sget v5, Lcom/android/systemui/R$id;->content:I

    const/16 v7, 0x50

    const-string v8, "setGravity"

    invoke-virtual {v0, v5, v8, v7}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 527
    :cond_1
    invoke-virtual {p1}, Landroid/app/people/ConversationStatus;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p1

    const-string v5, "setTextColor"

    if-eqz p1, :cond_3

    .line 530
    sget v7, Lcom/android/systemui/R$id;->scrim_layout:I

    invoke-virtual {v0, v7, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 531
    sget v3, Lcom/android/systemui/R$id;->status_icon:I

    invoke-virtual {v0, v3, p1}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 533
    iget p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    const/16 p1, 0x8

    if-ne p0, v6, :cond_2

    const-string p0, "PeopleTileView"

    const-string v1, "Remove name for large"

    .line 534
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    sget p0, Lcom/android/systemui/R$id;->name:I

    invoke-virtual {v0, p0, p1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const p0, 0x1010036

    .line 536
    invoke-virtual {v0, v4, v5, p0}, Landroid/widget/RemoteViews;->setColorAttr(ILjava/lang/String;I)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    if-ne p0, v3, :cond_4

    .line 539
    invoke-virtual {v0, v4, p1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 540
    sget p0, Lcom/android/systemui/R$id;->name:I

    invoke-virtual {v0, p0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const p1, 0x1010038

    .line 544
    invoke-virtual {v0, v4, v5, p1}, Landroid/widget/RemoteViews;->setColorAttr(ILjava/lang/String;I)V

    .line 546
    invoke-direct {p0, v0, v3}, Lcom/android/systemui/people/PeopleTileViewHelper;->setMaxLines(Landroid/widget/RemoteViews;Z)V

    .line 549
    :cond_4
    :goto_0
    sget p0, Lcom/android/systemui/R$drawable;->ic_person:I

    invoke-virtual {v0, v2, p0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    return-object v0
.end method

.method private createSuppressedView()Landroid/widget/RemoteViews;
    .locals 3

    .line 262
    iget-object v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->isUserQuieted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$layout;->people_tile_work_profile_quiet_layout:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    .line 266
    :cond_0
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$layout;->people_tile_suppressed_layout:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 269
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$drawable;->ic_conversation_icon:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 270
    invoke-static {p0}, Lcom/android/systemui/people/PeopleSpaceUtils;->convertDrawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 271
    new-instance v1, Lcom/android/launcher3/icons/FastBitmapDrawable;

    invoke-direct {v1, p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/4 p0, 0x1

    .line 272
    invoke-virtual {v1, p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setIsDisabled(Z)V

    .line 273
    invoke-static {v1}, Lcom/android/systemui/people/PeopleSpaceUtils;->convertDrawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 274
    sget v1, Lcom/android/systemui/R$id;->icon:I

    invoke-virtual {v0, v1, p0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private decorateBackground(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;
    .locals 3

    .line 613
    invoke-virtual {p0, p2}, Lcom/android/systemui/people/PeopleTileViewHelper;->getDoubleEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 614
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 615
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->setEmojiBackground(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;

    .line 616
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/people/PeopleTileViewHelper;->setPunctuationBackground(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;

    return-object p1

    .line 620
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/people/PeopleTileViewHelper;->getDoublePunctuation(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 621
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/people/PeopleTileViewHelper;->setEmojiBackground(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;

    .line 622
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/people/PeopleTileViewHelper;->setPunctuationBackground(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;

    return-object p1
.end method

.method private getBirthdayStatus(Ljava/util/List;)Landroid/app/people/ConversationStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/people/ConversationStatus;",
            ">;)",
            "Landroid/app/people/ConversationStatus;"
        }
    .end annotation

    .line 556
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda2;

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 557
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    .line 558
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/people/ConversationStatus;

    return-object p0

    .line 561
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getBirthdayText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 562
    new-instance p1, Landroid/app/people/ConversationStatus$Builder;

    iget-object p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->getId()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Landroid/app/people/ConversationStatus$Builder;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/app/people/ConversationStatus$Builder;->build()Landroid/app/people/ConversationStatus;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getContentHeightForLayout(I)I
    .locals 3

    .line 314
    iget v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_0

    const/4 p0, -0x1

    return p0

    .line 319
    :cond_0
    iget v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mHeight:I

    sget v1, Lcom/android/systemui/R$dimen;->max_people_avatar_size_for_large_content:I

    invoke-direct {p0, v1}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    move-result p0

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, 0x2e

    sub-int/2addr v0, p0

    return v0

    .line 316
    :cond_1
    iget v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mHeight:I

    add-int/lit8 p1, p1, 0x8

    iget p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mMediumVerticalPadding:I

    mul-int/2addr p0, v2

    add-int/2addr p1, p0

    sub-int/2addr v0, p1

    return v0
.end method

.method private getEmptyLayout()I
    .locals 1

    .line 776
    iget p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 783
    sget p0, Lcom/android/systemui/R$layout;->people_tile_small:I

    return p0

    .line 780
    :cond_0
    sget p0, Lcom/android/systemui/R$layout;->people_tile_large_empty:I

    return p0

    .line 778
    :cond_1
    sget p0, Lcom/android/systemui/R$layout;->people_tile_medium_empty:I

    return p0
.end method

.method public static getLastInteractionString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "PeopleTileView"

    const-string p1, "Could not get valid last interaction"

    .line 825
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 828
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    .line 829
    invoke-static {v2, v3}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object p1

    .line 830
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    sget-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-static {p2, v0}, Landroid/icu/text/MeasureFormat;->getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    move-result-object p2

    .line 832
    invoke-virtual {p1}, Ljava/time/Duration;->toDays()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    return-object v1

    .line 834
    :cond_1
    invoke-virtual {p1}, Ljava/time/Duration;->toDays()J

    move-result-wide v0

    const-wide/16 v2, 0x7

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-gez v0, :cond_2

    .line 835
    sget v0, Lcom/android/systemui/R$string;->timestamp:I

    new-array v2, v4, [Ljava/lang/Object;

    new-array v3, v4, [Landroid/icu/util/Measure;

    new-instance v4, Landroid/icu/util/Measure;

    .line 836
    invoke-virtual {p1}, Ljava/time/Duration;->toDays()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    sget-object v5, Landroid/icu/util/MeasureUnit;->DAY:Landroid/icu/util/TimeUnit;

    invoke-direct {v4, p1, v5}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    aput-object v4, v3, v1

    .line 835
    invoke-virtual {p2, v3}, Landroid/icu/text/MeasureFormat;->formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 838
    :cond_2
    invoke-virtual {p1}, Ljava/time/Duration;->toDays()J

    move-result-wide v5

    const-wide/16 v7, 0xe

    cmp-long v0, v5, v7

    if-gtz v0, :cond_4

    .line 839
    invoke-virtual {p1}, Ljava/time/Duration;->toDays()J

    move-result-wide v5

    cmp-long v0, v5, v2

    if-nez v0, :cond_3

    .line 840
    sget v0, Lcom/android/systemui/R$string;->timestamp:I

    goto :goto_0

    :cond_3
    sget v0, Lcom/android/systemui/R$string;->over_timestamp:I

    :goto_0
    new-array v5, v4, [Ljava/lang/Object;

    new-array v4, v4, [Landroid/icu/util/Measure;

    new-instance v6, Landroid/icu/util/Measure;

    .line 842
    invoke-virtual {p1}, Ljava/time/Duration;->toDays()J

    move-result-wide v7

    div-long/2addr v7, v2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    sget-object v2, Landroid/icu/util/MeasureUnit;->WEEK:Landroid/icu/util/TimeUnit;

    invoke-direct {v6, p1, v2}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    aput-object v6, v4, v1

    .line 841
    invoke-virtual {p2, v4}, Landroid/icu/text/MeasureFormat;->formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v1

    .line 839
    invoke-virtual {p0, v0, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 846
    :cond_4
    sget p1, Lcom/android/systemui/R$string;->over_timestamp:I

    new-array v0, v4, [Ljava/lang/Object;

    new-array v2, v4, [Landroid/icu/util/Measure;

    new-instance v3, Landroid/icu/util/Measure;

    const/4 v4, 0x2

    .line 847
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Landroid/icu/util/MeasureUnit;->WEEK:Landroid/icu/util/TimeUnit;

    invoke-direct {v3, v4, v5}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    aput-object v3, v2, v1

    invoke-virtual {p2, v2}, Landroid/icu/text/MeasureFormat;->formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v1

    .line 846
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getLayoutForContent()I
    .locals 1

    .line 788
    iget p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 795
    sget p0, Lcom/android/systemui/R$layout;->people_tile_small:I

    return p0

    .line 792
    :cond_0
    sget p0, Lcom/android/systemui/R$layout;->people_tile_large_with_content:I

    return p0

    .line 790
    :cond_1
    sget p0, Lcom/android/systemui/R$layout;->people_tile_medium_with_content:I

    return p0
.end method

.method private getLayoutSize()I
    .locals 7

    .line 329
    iget v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mHeight:I

    sget v1, Lcom/android/systemui/R$dimen;->required_width_for_large:I

    invoke-direct {p0, v1}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    move-result v2

    const/4 v3, 0x2

    const-string v4, " mHeight: "

    const-string v5, "PeopleTileView"

    if-lt v0, v2, :cond_0

    iget v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mWidth:I

    .line 330
    invoke-direct {p0, v1}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Large view for mWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mHeight:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 335
    :cond_0
    iget v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mWidth:I

    sget v1, Lcom/android/systemui/R$dimen;->required_width_for_medium:I

    invoke-direct {p0, v1}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 336
    iget v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mHeight:I

    sget v1, Lcom/android/systemui/R$dimen;->avatar_size_for_medium:I

    .line 337
    invoke-direct {p0, v1}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    move-result v1

    const/4 v2, 0x4

    add-int/2addr v1, v2

    sget v6, Lcom/android/systemui/R$dimen;->name_text_size_for_medium:I

    .line 338
    invoke-direct {p0, v6}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    move-result v6

    .line 337
    invoke-direct {p0, v6}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLineHeight(I)I

    move-result v6

    add-int/2addr v1, v6

    sub-int/2addr v0, v1

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Medium view for mWidth: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mWidth:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mHeight:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " with padding space: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-static {v0, v3}, Ljava/lang/Math;->floorDiv(II)I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 345
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mMediumVerticalPadding:I

    const/4 p0, 0x1

    return p0

    .line 349
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Small view for mWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mHeight:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private getLineHeight(I)I
    .locals 2

    .line 294
    :try_start_0
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    int-to-float p1, p1

    .line 295
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 296
    invoke-virtual {v0}, Landroid/widget/TextView;->getLineHeight()I

    move-result p1

    int-to-float p1, p1

    iget p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mDensity:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    div-float/2addr p1, p0

    float-to-int p0, p1

    return p0

    :catch_0
    move-exception p1

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not create text view: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PeopleTileView"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    sget p1, Lcom/android/systemui/R$dimen;->content_text_size_for_medium:I

    invoke-direct {p0, p1}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    move-result p0

    return p0
.end method

.method private getMaxAvatarSize(Landroid/widget/RemoteViews;)I
    .locals 3

    .line 355
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result p1

    .line 356
    sget v0, Lcom/android/systemui/R$dimen;->avatar_size_for_medium:I

    invoke-direct {p0, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    move-result v1

    .line 357
    sget v2, Lcom/android/systemui/R$layout;->people_tile_medium_empty:I

    if-ne p1, v2, :cond_0

    .line 358
    sget p1, Lcom/android/systemui/R$dimen;->max_people_avatar_size_for_large_content:I

    invoke-direct {p0, p1}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    move-result p0

    return p0

    .line 361
    :cond_0
    sget v2, Lcom/android/systemui/R$layout;->people_tile_medium_with_content:I

    if-ne p1, v2, :cond_1

    .line 362
    invoke-direct {p0, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    move-result p0

    return p0

    .line 366
    :cond_1
    sget v0, Lcom/android/systemui/R$layout;->people_tile_small:I

    if-ne p1, v0, :cond_2

    .line 367
    iget v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mHeight:I

    sget v1, Lcom/android/systemui/R$dimen;->name_text_size_for_small:I

    .line 368
    invoke-direct {p0, v1}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLineHeight(I)I

    move-result v1

    const/16 v2, 0x12

    .line 367
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 370
    iget v1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mWidth:I

    add-int/lit8 v1, v1, -0x8

    .line 371
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 374
    :cond_2
    sget v0, Lcom/android/systemui/R$layout;->people_tile_large_with_content:I

    if-ne p1, v0, :cond_3

    .line 375
    iget p1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mHeight:I

    sget v0, Lcom/android/systemui/R$dimen;->content_text_size_for_large:I

    .line 376
    invoke-direct {p0, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    move-result v0

    .line 375
    invoke-direct {p0, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLineHeight(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x2e

    sub-int/2addr p1, v0

    .line 378
    sget v0, Lcom/android/systemui/R$dimen;->max_people_avatar_size_for_large_content:I

    invoke-direct {p0, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    .line 382
    :cond_3
    sget v0, Lcom/android/systemui/R$layout;->people_tile_large_empty:I

    if-ne p1, v0, :cond_4

    .line 383
    iget p1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mHeight:I

    sget v0, Lcom/android/systemui/R$dimen;->name_text_size_for_large:I

    .line 384
    invoke-direct {p0, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    move-result v0

    .line 383
    invoke-direct {p0, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLineHeight(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1c

    sget v1, Lcom/android/systemui/R$dimen;->content_text_size_for_large:I

    .line 386
    invoke-direct {p0, v1}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    move-result v1

    .line 385
    invoke-direct {p0, v1}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLineHeight(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0xe

    sub-int/2addr p1, v0

    .line 388
    iget v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mWidth:I

    add-int/lit8 v0, v0, -0x1c

    .line 389
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 391
    :cond_4
    sget p1, Lcom/android/systemui/R$dimen;->max_people_avatar_size:I

    .line 392
    invoke-direct {p0, p1}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    move-result p0

    .line 391
    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private getMessagesCountText(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x6

    if-lt p1, v1, :cond_0

    .line 500
    iget-object p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->messages_count_overflow_indicator:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 501
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    .line 500
    invoke-virtual {p0, p1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 507
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    .line 508
    iget-object v1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 509
    iput-object v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mLocale:Ljava/util/Locale;

    .line 510
    invoke-static {v0}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mIntegerFormat:Ljava/text/NumberFormat;

    .line 512
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mIntegerFormat:Ljava/text/NumberFormat;

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPersonIconBitmap(Landroid/content/Context;Landroid/app/people/PeopleSpaceTile;I)Landroid/graphics/Bitmap;
    .locals 8

    .line 803
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getStatuses()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getStatuses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda1;

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v7, v0

    goto :goto_0

    :cond_0
    move v7, v1

    .line 806
    :goto_0
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getUserIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 810
    :cond_1
    new-instance v2, Lcom/android/systemui/people/PeopleStoryIconFactory;

    .line 811
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 812
    invoke-static {p0, v1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;Z)Landroid/util/IconDrawableFactory;

    move-result-object v1

    invoke-direct {v2, p0, v3, v1, p2}, Lcom/android/systemui/people/PeopleStoryIconFactory;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/util/IconDrawableFactory;I)V

    .line 814
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 816
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/android/systemui/people/PeopleSpaceUtils;->getUserId(Landroid/app/people/PeopleSpaceTile;)I

    move-result v5

    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->isImportantConversation()Z

    move-result v6

    .line 815
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/people/PeopleStoryIconFactory;->getPeopleTileDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/String;IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 818
    invoke-static {p0}, Lcom/android/systemui/people/PeopleSpaceUtils;->convertDrawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private getSizeInDp(I)I
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mDensity:F

    invoke-static {v0, p1, p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(Landroid/content/Context;IF)I

    move-result p0

    return p0
.end method

.method public static getSizeInDp(Landroid/content/Context;IF)I
    .locals 0

    .line 310
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    div-float/2addr p0, p2

    float-to-int p0, p0

    return p0
.end method

.method private getStatusTextByType(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p0, ""

    return-object p0

    .line 593
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->upcoming_birthday_status:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 597
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->location_status:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 605
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->game_status:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 601
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->video_status:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 603
    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->audio_status:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 599
    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->new_story_status:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 595
    :pswitch_6
    iget-object p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->anniversary_status:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 591
    :pswitch_7
    iget-object p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->birthday_status:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getViewForContentLayout()Landroid/widget/RemoteViews;
    .locals 8

    .line 722
    new-instance v6, Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 723
    invoke-direct {p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLayoutForContent()I

    move-result v1

    invoke-direct {v6, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 724
    iget v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    const/4 v1, 0x0

    const/16 v7, 0x8

    if-nez v0, :cond_0

    .line 725
    sget v0, Lcom/android/systemui/R$id;->predefined_icon:I

    invoke-virtual {v6, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 726
    sget v0, Lcom/android/systemui/R$id;->name:I

    invoke-virtual {v6, v0, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    .line 728
    :cond_0
    sget v0, Lcom/android/systemui/R$id;->predefined_icon:I

    invoke-virtual {v6, v0, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 729
    sget v0, Lcom/android/systemui/R$id;->name:I

    invoke-virtual {v6, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 730
    sget v0, Lcom/android/systemui/R$id;->text_content:I

    invoke-virtual {v6, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 731
    sget v0, Lcom/android/systemui/R$id;->subtext:I

    invoke-virtual {v6, v0, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 732
    sget v0, Lcom/android/systemui/R$id;->image:I

    invoke-virtual {v6, v0, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 733
    sget v0, Lcom/android/systemui/R$id;->scrim_layout:I

    invoke-virtual {v6, v0, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 736
    :goto_0
    iget v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set vertical padding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mMediumVerticalPadding:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PeopleTileView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x41800000    # 16.0f

    .line 738
    iget v1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mDensity:F

    mul-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v4, v0

    .line 739
    iget v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mMediumVerticalPadding:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mDensity:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v5, v0

    .line 740
    sget v1, Lcom/android/systemui/R$id;->content:I

    move-object v0, v6

    move v2, v4

    move v3, v5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 744
    :cond_1
    sget v0, Lcom/android/systemui/R$id;->messages_count:I

    invoke-virtual {v6, v0, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 745
    iget-object v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 746
    sget v0, Lcom/android/systemui/R$id;->name:I

    iget-object p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v6, v0, p0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_2
    return-object v6
.end method

.method private getViewForTile()Landroid/widget/RemoteViews;
    .locals 5

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Creating view for tile key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mKey:Lcom/android/systemui/people/widget/PeopleTileKey;

    invoke-virtual {v1}, Lcom/android/systemui/people/widget/PeopleTileKey;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PeopleTileView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->isPackageSuspended()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->isUserQuieted()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    .line 197
    invoke-direct {p0, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->isDndBlockingTileData(Landroid/app/people/PeopleSpaceTile;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->getNotificationCategory()Ljava/lang/String;

    move-result-object v0

    const-string v2, "missed_call"

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Create missed call view"

    .line 203
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-direct {p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->createMissedCallRemoteViews()Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->getNotificationKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "Create notification view"

    .line 208
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-direct {p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->createNotificationRemoteViews()Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->getStatuses()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    new-array v0, v2, [Landroid/app/people/ConversationStatus;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 215
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    .line 214
    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->getStatuses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/people/PeopleTileViewHelper;)V

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 215
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 216
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getBirthdayStatus(Ljava/util/List;)Landroid/app/people/ConversationStatus;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v0, "Create birthday view"

    .line 218
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-direct {p0, v3}, Lcom/android/systemui/people/PeopleTileViewHelper;->createStatusRemoteViews(Landroid/app/people/ConversationStatus;)Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0

    .line 222
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 224
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Create status view for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/people/ConversationStatus;

    invoke-virtual {v4}, Landroid/app/people/ConversationStatus;->getActivity()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 224
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/people/ConversationStatus;

    invoke-direct {p0, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->createStatusRemoteViews(Landroid/app/people/ConversationStatus;)Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0

    .line 230
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->createLastInteractionRemoteViews()Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0

    .line 198
    :cond_6
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create suppressed view: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-direct {p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->createSuppressedView()Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0
.end method

.method private isDndBlockingTileData(Landroid/app/people/PeopleSpaceTile;)Z
    .locals 4

    .line 234
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getNotificationPolicyState()I

    move-result p0

    and-int/lit8 v0, p0, 0x1

    const/4 v1, 0x0

    const-string v2, "PeopleTileView"

    if-eqz v0, :cond_0

    .line 237
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Tile can show all data: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_1

    .line 241
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->isImportantConversation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Tile can show important: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    and-int/lit8 v0, p0, 0x8

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    .line 246
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getContactAffinity()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    .line 247
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Tile can show starred: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_4

    .line 251
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getContactAffinity()F

    move-result p0

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_3

    .line 252
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getContactAffinity()F

    move-result p0

    cmpl-float p0, p0, v3

    if-nez p0, :cond_4

    .line 253
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Tile can show contacts: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 256
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Tile can show if can bypass DND: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->canBypassDnd()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private isStatusValidForEntireStatusView(Landroid/app/people/ConversationStatus;)Z
    .locals 2

    .line 575
    invoke-virtual {p1}, Landroid/app/people/ConversationStatus;->getActivity()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    .line 583
    invoke-virtual {p1}, Landroid/app/people/ConversationStatus;->getDescription()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 584
    invoke-virtual {p1}, Landroid/app/people/ConversationStatus;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private static synthetic lambda$getBirthdayStatus$2(Landroid/app/people/ConversationStatus;)Z
    .locals 1

    .line 557
    invoke-virtual {p0}, Landroid/app/people/ConversationStatus;->getActivity()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic lambda$getPersonIconBitmap$3(Landroid/app/people/ConversationStatus;)Z
    .locals 1

    .line 804
    invoke-virtual {p0}, Landroid/app/people/ConversationStatus;->getActivity()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$getViewForTile$0(Landroid/app/people/ConversationStatus;)Z
    .locals 0

    .line 215
    invoke-direct {p0, p1}, Lcom/android/systemui/people/PeopleTileViewHelper;->isStatusValidForEntireStatusView(Landroid/app/people/ConversationStatus;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$setCommonRemoteViewsFields$1(Landroid/app/people/ConversationStatus;)Z
    .locals 0

    .line 403
    invoke-virtual {p0}, Landroid/app/people/ConversationStatus;->getAvailability()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setCommonRemoteViewsFields(Landroid/widget/RemoteViews;I)Landroid/widget/RemoteViews;
    .locals 4

    .line 398
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    if-nez v0, :cond_0

    return-object p1

    .line 402
    :cond_0
    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->getStatuses()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->getStatuses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v3, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda3;->INSTANCE:Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda3;

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 405
    sget v0, Lcom/android/systemui/R$id;->availability:I

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1

    .line 407
    :cond_2
    sget v0, Lcom/android/systemui/R$id;->availability:I

    const/16 v2, 0x8

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 410
    :goto_1
    sget v0, Lcom/android/systemui/R$id;->image:I

    const-string v2, "setClipToOutline"

    invoke-virtual {p1, v0, v2, v1}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 411
    sget v0, Lcom/android/systemui/R$id;->person_icon:I

    iget-object v1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    .line 412
    invoke-static {v1, p0, p2}, Lcom/android/systemui/people/PeopleTileViewHelper;->getPersonIconBitmap(Landroid/content/Context;Landroid/app/people/PeopleSpaceTile;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 411
    invoke-virtual {p1, v0, p0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 415
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to set common fields: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "PeopleTileView"

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private setEmojiBackground(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;
    .locals 0

    .line 627
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 628
    sget p0, Lcom/android/systemui/R$id;->emojis:I

    const/16 p2, 0x8

    invoke-virtual {p1, p0, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-object p1

    .line 631
    :cond_0
    sget p0, Lcom/android/systemui/R$id;->emoji1:I

    invoke-virtual {p1, p0, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 632
    sget p0, Lcom/android/systemui/R$id;->emoji2:I

    invoke-virtual {p1, p0, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 633
    sget p0, Lcom/android/systemui/R$id;->emoji3:I

    invoke-virtual {p1, p0, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 635
    sget p0, Lcom/android/systemui/R$id;->emojis:I

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-object p1
.end method

.method private setLaunchIntents(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 4

    .line 422
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/people/widget/LaunchConversationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x50808000

    .line 423
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "extra_tile_id"

    .line 428
    iget-object v2, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mKey:Lcom/android/systemui/people/widget/PeopleTileKey;

    invoke-virtual {v2}, Lcom/android/systemui/people/widget/PeopleTileKey;->getShortcutId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_package_name"

    .line 429
    iget-object v2, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mKey:Lcom/android/systemui/people/widget/PeopleTileKey;

    .line 430
    invoke-virtual {v2}, Lcom/android/systemui/people/widget/PeopleTileKey;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 429
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_user_handle"

    .line 431
    new-instance v2, Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mKey:Lcom/android/systemui/people/widget/PeopleTileKey;

    .line 432
    invoke-virtual {v3}, Lcom/android/systemui/people/widget/PeopleTileKey;->getUserId()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 431
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 433
    iget-object v1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    if-eqz v1, :cond_0

    const-string v2, "extra_notification_key"

    .line 436
    invoke-virtual {v1}, Landroid/app/people/PeopleSpaceTile;->getNotificationKey()Ljava/lang/String;

    move-result-object v1

    .line 434
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    :cond_0
    sget v1, Lcom/android/systemui/R$id;->item:I

    iget-object v2, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mAppWidgetId:I

    const/high16 v3, 0xa000000

    invoke-static {v2, p0, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to add launch intents: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PeopleTileView"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private setMaxLines(Landroid/widget/RemoteViews;Z)V
    .locals 2

    .line 279
    iget v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget v0, Lcom/android/systemui/R$dimen;->content_text_size_for_large:I

    invoke-direct {p0, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    move-result v0

    goto :goto_0

    .line 281
    :cond_0
    sget v0, Lcom/android/systemui/R$dimen;->content_text_size_for_medium:I

    invoke-direct {p0, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    move-result v0

    .line 282
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLineHeight(I)I

    move-result v0

    .line 283
    invoke-direct {p0, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getContentHeightForLayout(I)I

    move-result p0

    .line 284
    invoke-static {p0, v0}, Ljava/lang/Math;->floorDiv(II)I

    move-result p0

    .line 285
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    if-eqz p2, :cond_1

    add-int/lit8 p0, p0, -0x1

    .line 289
    :cond_1
    sget p2, Lcom/android/systemui/R$id;->text_content:I

    const-string v0, "setMaxLines"

    invoke-virtual {p1, p2, v0, p0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method

.method private setPunctuationBackground(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;
    .locals 0

    .line 640
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 641
    sget p0, Lcom/android/systemui/R$id;->punctuations:I

    const/16 p2, 0x8

    invoke-virtual {p1, p0, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-object p1

    .line 644
    :cond_0
    sget p0, Lcom/android/systemui/R$id;->punctuation1:I

    invoke-virtual {p1, p0, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 645
    sget p0, Lcom/android/systemui/R$id;->punctuation2:I

    invoke-virtual {p1, p0, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 646
    sget p0, Lcom/android/systemui/R$id;->punctuation3:I

    invoke-virtual {p1, p0, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 647
    sget p0, Lcom/android/systemui/R$id;->punctuation4:I

    invoke-virtual {p1, p0, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 648
    sget p0, Lcom/android/systemui/R$id;->punctuation5:I

    invoke-virtual {p1, p0, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 649
    sget p0, Lcom/android/systemui/R$id;->punctuation6:I

    invoke-virtual {p1, p0, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 651
    sget p0, Lcom/android/systemui/R$id;->punctuations:I

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-object p1
.end method


# virtual methods
.method getDoubleEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 682
    sget-object p0, Lcom/android/systemui/people/PeopleTileViewHelper;->EMOJI_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 684
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 686
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 689
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 690
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    .line 691
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    .line 692
    new-instance v4, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 693
    invoke-interface {p1, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 696
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Number of emojis in the message: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PeopleTileView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ge p0, v2, :cond_1

    return-object v3

    :cond_1
    const/4 p0, 0x1

    .line 701
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge p0, v2, :cond_3

    .line 702
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    add-int/lit8 v4, p0, -0x1

    .line 703
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 706
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-ne v2, v5, :cond_2

    .line 708
    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Two of the same emojis in sequence: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_3
    return-object v3
.end method

.method getDoublePunctuation(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 658
    sget-object p0, Lcom/android/systemui/people/PeopleTileViewHelper;->ANY_DOUBLE_MARK_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 661
    :cond_0
    sget-object p0, Lcom/android/systemui/people/PeopleTileViewHelper;->MIXED_MARK_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "!?"

    return-object p0

    .line 664
    :cond_1
    sget-object p0, Lcom/android/systemui/people/PeopleTileViewHelper;->DOUBLE_QUESTION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 665
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    const-string v1, "!"

    if-nez v0, :cond_2

    return-object v1

    .line 668
    :cond_2
    sget-object v0, Lcom/android/systemui/people/PeopleTileViewHelper;->DOUBLE_EXCLAMATION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 669
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    const-string v2, "?"

    if-nez v0, :cond_3

    return-object v2

    .line 673
    :cond_3
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result p0

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result p1

    if-ge p0, p1, :cond_4

    return-object v2

    :cond_4
    return-object v1
.end method

.method public getViews()Landroid/widget/RemoteViews;
    .locals 2

    .line 184
    invoke-direct {p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getViewForTile()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 185
    invoke-direct {p0, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getMaxAvatarSize(Landroid/widget/RemoteViews;)I

    move-result v1

    .line 186
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/people/PeopleTileViewHelper;->setCommonRemoteViewsFields(Landroid/widget/RemoteViews;I)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 187
    invoke-direct {p0, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->setLaunchIntents(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0
.end method
