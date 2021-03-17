.class public Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;
.super Landroid/widget/EditText;
.source "RemoteInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/RemoteInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteEditText"
.end annotation


# instance fields
.field private final mBackground:Landroid/graphics/drawable/Drawable;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

.field private final mOnReceiveContentListener:Landroid/view/OnReceiveContentListener;

.field private mRemoteInputView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

.field mShowImeOnInputConnection:Z

.field mUser:Landroid/os/UserHandle;


# direct methods
.method public static synthetic $r8$lambda$VBd8xMoPcO94vlJD4vEQRFrQHXs(Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;Landroid/view/View;Landroid/view/ContentInfo;)Landroid/view/ContentInfo;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->onReceiveContent(Landroid/view/View;Landroid/view/ContentInfo;)Landroid/view/ContentInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$o5GzYistNZ-zsumYhPML9h_npJM(Landroid/content/ClipData$Item;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->lambda$onReceiveContent$0(Landroid/content/ClipData$Item;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 657
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 647
    new-instance p1, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText-$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mOnReceiveContentListener:Landroid/view/OnReceiveContentListener;

    .line 658
    invoke-virtual {p0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 659
    const-class p1, Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/LightBarController;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0

    .line 645
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;)V
    .locals 0

    .line 645
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->hideIme()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;Lcom/android/systemui/statusbar/policy/RemoteInputView;)Lcom/android/systemui/statusbar/policy/RemoteInputView;
    .locals 0

    .line 645
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mRemoteInputView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;Z)V
    .locals 0

    .line 645
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->defocusIfNeeded(Z)V

    return-void
.end method

.method private defocusIfNeeded(Z)V
    .locals 2

    .line 679
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mRemoteInputView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->access$200(Lcom/android/systemui/statusbar/policy/RemoteInputView;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isChangingPosition()Z

    move-result v0

    if-nez v0, :cond_1

    .line 680
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->isTemporarilyDetached()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 681
    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->isTemporarilyDetached()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 684
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mRemoteInputView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz p1, :cond_2

    .line 685
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->access$200(Lcom/android/systemui/statusbar/policy/RemoteInputView;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputText:Ljava/lang/CharSequence;

    :cond_2
    return-void

    .line 690
    :cond_3
    invoke-virtual {p0}, Landroid/widget/EditText;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 691
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->setInnerFocusable(Z)V

    .line 692
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mRemoteInputView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v1, :cond_4

    .line 693
    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->access$1100(Lcom/android/systemui/statusbar/policy/RemoteInputView;Z)V

    .line 695
    :cond_4
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mShowImeOnInputConnection:Z

    :cond_5
    return-void
.end method

.method private hideIme()V
    .locals 2

    .line 673
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 674
    invoke-virtual {p0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private static synthetic lambda$onReceiveContent$0(Landroid/content/ClipData$Item;)Z
    .locals 0

    .line 824
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onReceiveContent(Landroid/view/View;Landroid/view/ContentInfo;)Landroid/view/ContentInfo;
    .locals 4

    .line 823
    sget-object p1, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText-$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText-$$ExternalSyntheticLambda1;

    .line 824
    invoke-virtual {p2, p1}, Landroid/view/ContentInfo;->partition(Ljava/util/function/Predicate;)Landroid/util/Pair;

    move-result-object p1

    .line 825
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/view/ContentInfo;

    .line 826
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/view/ContentInfo;

    if-eqz v0, :cond_2

    .line 828
    invoke-virtual {v0}, Landroid/view/ContentInfo;->getClip()Landroid/content/ClipData;

    move-result-object v0

    .line 829
    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v1

    .line 830
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    .line 831
    invoke-virtual {v1}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    move-result v2

    if-lt v2, v3, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 836
    invoke-virtual {v0, p2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 837
    invoke-virtual {v1, p2}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object p2

    .line 838
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mRemoteInputView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 839
    invoke-virtual {v1, p2, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->prepareRemoteInputFromData(Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p2

    .line 840
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mRemoteInputView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-static {p0, p2}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->access$900(Lcom/android/systemui/statusbar/policy/RemoteInputView;Landroid/content/Intent;)V

    goto :goto_1

    :cond_1
    :goto_0
    return-object p2

    :cond_2
    :goto_1
    return-object p1
.end method


# virtual methods
.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2

    .line 724
    invoke-super {p0, p1}, Landroid/widget/EditText;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 725
    iget v0, p0, Landroid/widget/EditText;->mScrollY:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 726
    iget v1, p0, Landroid/widget/EditText;->mBottom:I

    iget p0, p0, Landroid/widget/EditText;->mTop:I

    sub-int/2addr v1, p0

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 3

    .line 767
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mRemoteInputView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->access$1300(Lcom/android/systemui/statusbar/policy/RemoteInputView;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    .line 768
    invoke-super {p0}, Landroid/widget/EditText;->onCheckIsTextEditor()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 0

    .line 804
    invoke-virtual {p0}, Landroid/widget/EditText;->clearComposingText()V

    .line 805
    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 806
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 4

    .line 773
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    .line 776
    :try_start_0
    iget-object v0, p0, Landroid/widget/EditText;->mContext:Landroid/content/Context;

    .line 777
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mUser:Landroid/os/UserHandle;

    .line 776
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 779
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create user context:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoteInput"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 782
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mShowImeOnInputConnection:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_1

    .line 783
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 784
    :goto_1
    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    .line 789
    new-instance v0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText$1;-><init>(Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;)V

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-object p1
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 710
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 711
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mRemoteInputView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz p2, :cond_0

    .line 712
    invoke-static {p2, p0, p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->access$1200(Lcom/android/systemui/statusbar/policy/RemoteInputView;Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;Z)V

    :cond_0
    if-nez p1, :cond_1

    const/4 p2, 0x1

    .line 715
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->defocusIfNeeded(Z)V

    .line 717
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mRemoteInputView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz p2, :cond_2

    invoke-static {p2}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->access$1300(Lcom/android/systemui/statusbar/policy/RemoteInputView;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 718
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/LightBarController;->setDirectReplying(Z)V

    :cond_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 740
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 755
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 756
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 757
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->defocusIfNeeded(Z)V

    .line 759
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 746
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->defocusIfNeeded(Z)V

    return p1

    .line 749
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 701
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onVisibilityChanged(Landroid/view/View;I)V

    .line 703
    invoke-virtual {p0}, Landroid/widget/EditText;->isShown()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 704
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->defocusIfNeeded(Z)V

    :cond_0
    return-void
.end method

.method public requestRectangleOnScreen(Landroid/graphics/Rect;)Z
    .locals 0

    .line 731
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mRemoteInputView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->requestScrollTo()Z

    move-result p0

    return p0
.end method

.method setInnerFocusable(Z)V
    .locals 0

    .line 810
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 811
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 812
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    if-eqz p1, :cond_0

    .line 815
    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    .line 816
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 818
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method setSupportedMimeTypes(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 665
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 666
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, [Ljava/lang/String;

    .line 667
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mOnReceiveContentListener:Landroid/view/OnReceiveContentListener;

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 669
    :goto_0
    invoke-virtual {p0, v0, p1}, Landroid/widget/EditText;->setOnReceiveContentListener([Ljava/lang/String;Landroid/view/OnReceiveContentListener;)V

    return-void
.end method
