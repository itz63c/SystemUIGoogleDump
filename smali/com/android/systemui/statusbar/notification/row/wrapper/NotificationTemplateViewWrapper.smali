.class public Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;
.super Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;
.source "NotificationTemplateViewWrapper.java"


# instance fields
.field private mActions:Lcom/android/internal/widget/NotificationActionListLayout;

.field protected mActionsContainer:Landroid/view/View;

.field private mCanHideHeader:Z

.field private mCancelledPendingIntents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private mContentHeight:I

.field private final mFullHeaderTranslation:I

.field private mHeaderTranslation:F

.field private mMinHeightHint:I

.field protected mPicture:Landroid/widget/ImageView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRemoteInputHistory:Landroid/view/View;

.field private mText:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;


# direct methods
.method public static synthetic $r8$lambda$3Eac7RVQ5vZPtDL1Rq8VshJQRrg(Landroid/app/PendingIntent;Landroid/app/PendingIntent$CancelListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->lambda$performOnPendingIntentCancellation$3(Landroid/app/PendingIntent;Landroid/app/PendingIntent$CancelListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4Ea_PTPlV1YQsQIXZ8VdZDc0WbY(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->lambda$performOnPendingIntentCancellation$2(Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PbhN1T9so1QUgoUaW3qwRNTU35g(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;Landroid/widget/Button;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->lambda$updatePendingIntentCancellations$0(Landroid/widget/Button;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YghoKTS_VSp55EGYFmP7W6NC9uI(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;Landroid/app/PendingIntent;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->lambda$performOnPendingIntentCancellation$1(Landroid/app/PendingIntent;Ljava/lang/Runnable;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 1

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 63
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mCancelledPendingIntents:Landroid/util/ArraySet;

    .line 72
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    new-instance p3, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$1;-><init>(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;)V

    const/4 v0, 0x2

    invoke-virtual {p2, p3, v0}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->setCustomTransformation(Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;I)V

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x10501d8

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x10501db

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mFullHeaderTranslation:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;)Lcom/android/systemui/UiOffloadThread;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    return-object p0
.end method

.method private blendColorWithBackground(IF)I
    .locals 2

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p2, v0

    float-to-int p2, p2

    .line 197
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 196
    invoke-static {p2, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    .line 197
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->resolveBackgroundColor()I

    move-result p0

    .line 196
    invoke-static {p1, p0}, Lcom/android/internal/util/ContrastColorUtil;->compositeColors(II)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$performOnPendingIntentCancellation$1(Landroid/app/PendingIntent;Ljava/lang/Runnable;)V
    .locals 0

    .line 211
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mCancelledPendingIntents:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 212
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$performOnPendingIntentCancellation$2(Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/app/PendingIntent;)V
    .locals 1

    .line 210
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper-$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper-$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;Landroid/app/PendingIntent;Ljava/lang/Runnable;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static synthetic lambda$performOnPendingIntentCancellation$3(Landroid/app/PendingIntent;Landroid/app/PendingIntent$CancelListener;)V
    .locals 0

    .line 219
    invoke-virtual {p0, p1}, Landroid/app/PendingIntent;->registerCancelListener(Landroid/app/PendingIntent$CancelListener;)V

    return-void
.end method

.method private synthetic lambda$updatePendingIntentCancellations$0(Landroid/widget/Button;)V
    .locals 6

    .line 170
    invoke-virtual {p1}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 171
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 175
    invoke-virtual {p1}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 176
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getColors()[I

    move-result-object v2

    .line 177
    array-length v3, v2

    new-array v3, v3, [I

    .line 178
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10501c9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v4

    .line 180
    :goto_0
    array-length v5, v2

    if-ge v0, v5, :cond_0

    .line 181
    aget v5, v2, v0

    .line 182
    invoke-direct {p0, v5, v4}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->blendColorWithBackground(IF)I

    move-result v5

    .line 183
    aput v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    :cond_0
    new-instance p0, Landroid/content/res/ColorStateList;

    .line 186
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getStates()[[I

    move-result-object v0

    invoke-direct {p0, v0, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 187
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method private performOnPendingIntentCancellation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 3

    const v0, 0x10203ec

    .line 201
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    return-void

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mCancelledPendingIntents:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 209
    :cond_1
    new-instance v1, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper-$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;Landroid/app/PendingIntent;Ljava/lang/Runnable;)V

    .line 215
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    if-nez p2, :cond_2

    .line 216
    const-class p2, Lcom/android/systemui/UiOffloadThread;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/UiOffloadThread;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    .line 218
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 219
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v2, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper-$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper-$$ExternalSyntheticLambda1;-><init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent$CancelListener;)V

    invoke-virtual {p2, v2}, Lcom/android/systemui/UiOffloadThread;->execute(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 221
    :cond_3
    new-instance p2, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$2;

    invoke-direct {p2, p0, v0, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$2;-><init>(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;Landroid/app/PendingIntent;Landroid/app/PendingIntent$CancelListener;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_0
    return-void
.end method

.method private resolveTemplateViews(Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    const v1, 0x1020445

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 145
    sget v1, Lcom/android/systemui/statusbar/notification/ImageTransformState;->ICON_TAG:I

    .line 146
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object p1

    .line 145
    invoke-virtual {v0, v1, p1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 148
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mTitle:Landroid/widget/TextView;

    .line 149
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    const v0, 0x10204d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    .line 150
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    const v0, 0x102000d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 151
    instance-of v0, p1, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 152
    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 155
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    .line 157
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    const v0, 0x10201b2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mActionsContainer:Landroid/view/View;

    .line 158
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    const v0, 0x10201b1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/NotificationActionListLayout;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mActions:Lcom/android/internal/widget/NotificationActionListLayout;

    .line 159
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    const v0, 0x10203b5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mRemoteInputHistory:Landroid/view/View;

    .line 161
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->updatePendingIntentCancellations()V

    return-void
.end method

.method private updateActionOffset()V
    .locals 3

    .line 292
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mActionsContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 294
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mContentHeight:I

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mMinHeightHint:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 297
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mActionsContainer:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    const/4 v2, 0x0

    .line 298
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->getHeaderTranslation(Z)I

    move-result p0

    sub-int/2addr v0, p0

    int-to-float p0, v0

    .line 297
    invoke-virtual {v1, p0}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method private updatePendingIntentCancellations()V
    .locals 4

    .line 165
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mActions:Lcom/android/internal/widget/NotificationActionListLayout;

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 168
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mActions:Lcom/android/internal/widget/NotificationActionListLayout;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 169
    new-instance v3, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper-$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper-$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;Landroid/widget/Button;)V

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->performOnPendingIntentCancellation(Landroid/view/View;Ljava/lang/Runnable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getExtraMeasureHeight()I
    .locals 3

    .line 322
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mActions:Lcom/android/internal/widget/NotificationActionListLayout;

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationActionListLayout;->getExtraMeasureHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 325
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mRemoteInputHistory:Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 326
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->remote_input_history_extra_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 329
    :cond_1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getExtraMeasureHeight()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getHeaderTranslation(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 304
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mCanHideHeader:Z

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mFullHeaderTranslation:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mHeaderTranslation:F

    float-to-int p0, p0

    :goto_0
    return p0
.end method

.method public onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 2

    .line 240
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->resolveTemplateViews(Landroid/service/notification/StatusBarNotification;)V

    .line 241
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 244
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mCanHideHeader:Z

    .line 246
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getHeaderVisibleAmount()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 247
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getHeaderVisibleAmount()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->setHeaderVisibleAmount(F)V

    :cond_2
    return-void
.end method

.method public setContentHeight(II)V
    .locals 0

    .line 275
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setContentHeight(II)V

    .line 277
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mContentHeight:I

    .line 278
    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mMinHeightHint:I

    .line 279
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->updateActionOffset()V

    return-void
.end method

.method public setHeaderVisibleAmount(F)V
    .locals 1

    .line 309
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setHeaderVisibleAmount(F)V

    .line 311
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mCanHideHeader:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {v0, p1}, Landroid/view/NotificationHeaderView;->setAlpha(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    .line 313
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mFullHeaderTranslation:I

    int-to-float p1, p1

    mul-float/2addr v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 315
    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mHeaderTranslation:F

    .line 316
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public shouldClipToRounding(ZZ)Z
    .locals 1

    .line 284
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->shouldClipToRounding(ZZ)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_1

    .line 287
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mActionsContainer:Landroid/view/View;

    if-eqz p0, :cond_1

    .line 288
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/16 p1, 0x8

    if-eq p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected updateTransformedTypes()V
    .locals 3

    .line 254
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->updateTransformedTypes()V

    .line 255
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 256
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 260
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 264
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    .line 267
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_3

    .line 268
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    :cond_3
    return-void
.end method
