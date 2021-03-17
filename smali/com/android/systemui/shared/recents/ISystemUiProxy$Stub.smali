.class public abstract Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;
.super Landroid/os/Binder;
.source "ISystemUiProxy.java"

# interfaces
.implements Lcom/android/systemui/shared/recents/ISystemUiProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/recents/ISystemUiProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 267
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.systemui.shared.recents.ISystemUiProxy"

    .line 268
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.android.systemui.shared.recents.ISystemUiProxy"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_20

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1f

    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 781
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 756
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 758
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 759
    sget-object p1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    goto :goto_0

    :cond_0
    move-object p1, v3

    .line 765
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 767
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 769
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 770
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/os/Bundle;

    .line 775
    :cond_1
    invoke-interface {p0, p1, p4, v1, v3}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->startIntent(Landroid/app/PendingIntent;IILandroid/os/Bundle;)V

    .line 776
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 727
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 729
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 731
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 733
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 735
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 737
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 738
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    move-object v9, p1

    goto :goto_1

    :cond_2
    move-object v9, v3

    .line 744
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 745
    sget-object p1, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/os/UserHandle;

    :cond_3
    move-object v10, v3

    move-object v4, p0

    .line 750
    invoke-interface/range {v4 .. v10}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->startShortcut(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 751
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 707
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 709
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 711
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 713
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 715
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    .line 716
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/os/Bundle;

    .line 721
    :cond_4
    invoke-interface {p0, p1, p4, v1, v3}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->startTask(IIILandroid/os/Bundle;)V

    .line 722
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 698
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 700
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    move v2, v0

    .line 701
    :cond_5
    invoke-interface {p0, v2}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->exitSplitScreenOnHide(Z)V

    .line 702
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 691
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 692
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->exitSplitScreen()V

    .line 693
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 682
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 684
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    move v2, v0

    .line 685
    :cond_6
    invoke-interface {p0, v2}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->setSideStageVisibility(Z)V

    .line 686
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 673
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 675
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/shared/recents/ISplitScreenListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/systemui/shared/recents/ISplitScreenListener;

    move-result-object p1

    .line 676
    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->unregisterSplitScreenListener(Lcom/android/systemui/shared/recents/ISplitScreenListener;)V

    .line 677
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 664
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 666
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/shared/recents/ISplitScreenListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/systemui/shared/recents/ISplitScreenListener;

    move-result-object p1

    .line 667
    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->registerSplitScreenListener(Lcom/android/systemui/shared/recents/ISplitScreenListener;)V

    .line 668
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 650
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 652
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7

    .line 653
    sget-object p1, Lcom/android/systemui/shared/system/RemoteTransitionCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/android/systemui/shared/system/RemoteTransitionCompat;

    .line 658
    :cond_7
    invoke-interface {p0, v3}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->unregisterRemoteTransition(Lcom/android/systemui/shared/system/RemoteTransitionCompat;)V

    .line 659
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 636
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 638
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8

    .line 639
    sget-object p1, Lcom/android/systemui/shared/system/RemoteTransitionCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/android/systemui/shared/system/RemoteTransitionCompat;

    .line 644
    :cond_8
    invoke-interface {p0, v3}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->registerRemoteTransition(Lcom/android/systemui/shared/system/RemoteTransitionCompat;)V

    .line 645
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 615
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 617
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_9

    .line 618
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    goto :goto_2

    :cond_9
    move-object p1, v3

    .line 624
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_a

    .line 625
    sget-object p4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/graphics/Rect;

    .line 630
    :cond_a
    invoke-interface {p0, p1, v3}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->stopSwipePipToHome(Landroid/content/ComponentName;Landroid/graphics/Rect;)V

    .line 631
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 576
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 578
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_b

    .line 579
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    move-object v5, p1

    goto :goto_3

    :cond_b
    move-object v5, v3

    .line 585
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_c

    .line 586
    sget-object p1, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ActivityInfo;

    move-object v6, p1

    goto :goto_4

    :cond_c
    move-object v6, v3

    .line 592
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_d

    .line 593
    sget-object p1, Landroid/app/PictureInPictureParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/app/PictureInPictureParams;

    :cond_d
    move-object v7, v3

    .line 599
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 601
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object v4, p0

    .line 602
    invoke-interface/range {v4 .. v9}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->startSwipePipToHome(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;II)Landroid/graphics/Rect;

    move-result-object p0

    .line 603
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_e

    .line 605
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 606
    invoke-virtual {p0, p3, v0}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    .line 609
    :cond_e
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    return v0

    .line 569
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 570
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->expandNotificationPanel()V

    .line 571
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 534
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 536
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_f

    .line 537
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    goto :goto_6

    :cond_f
    move-object p1, v3

    .line 543
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_10

    .line 544
    sget-object p4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/graphics/Rect;

    goto :goto_7

    :cond_10
    move-object p4, v3

    .line 550
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_11

    .line 551
    sget-object v1, Landroid/graphics/Insets;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Insets;

    goto :goto_8

    :cond_11
    move-object v1, v3

    .line 557
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_12

    .line 558
    sget-object v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 563
    :cond_12
    invoke-interface {p0, p1, p4, v1, v3}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->handleImageBundleAsScreenshot(Landroid/os/Bundle;Landroid/graphics/Rect;Landroid/graphics/Insets;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    .line 564
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 527
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 528
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->stopOneHandedMode()V

    .line 529
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 520
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 521
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->startOneHandedMode()V

    .line 522
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 511
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 513
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 514
    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->onQuickSwitchToNewTask(I)V

    .line 515
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 502
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/shared/recents/IPinnedStackAnimationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/systemui/shared/recents/IPinnedStackAnimationListener;

    move-result-object p1

    .line 505
    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->setPinnedStackAnimationListener(Lcom/android/systemui/shared/recents/IPinnedStackAnimationListener;)V

    .line 506
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 495
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 496
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->notifySwipeToHomeFinished()V

    .line 497
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 486
    :pswitch_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_13

    move v2, v0

    .line 489
    :cond_13
    invoke-interface {p0, v2}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->setSplitScreenMinimized(Z)V

    .line 490
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 456
    :pswitch_14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_14

    .line 459
    sget-object p1, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    goto :goto_9

    :cond_14
    move-object p1, v3

    .line 465
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_15

    .line 466
    sget-object p4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/graphics/Rect;

    goto :goto_a

    :cond_15
    move-object p4, v3

    .line 472
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_16

    .line 473
    sget-object v1, Landroid/graphics/Insets;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/graphics/Insets;

    .line 479
    :cond_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 480
    invoke-interface {p0, p1, p4, v3, p2}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->handleImageAsScreenshot(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Insets;I)V

    .line 481
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 445
    :pswitch_15
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_17

    move v2, v0

    .line 449
    :cond_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 450
    invoke-interface {p0, v2, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->setShelfHeight(ZI)V

    .line 451
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 347
    :pswitch_16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_18

    move v2, v0

    .line 352
    :cond_18
    invoke-interface {p0, p1, v2}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->setNavBarButtonAlpha(FZ)V

    .line 353
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 381
    :pswitch_17
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 384
    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->onAssistantGestureCompletion(F)V

    .line 385
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 438
    :pswitch_18
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 439
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->stopScreenPinning()V

    .line 440
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 431
    :pswitch_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->notifyAccessibilityButtonLongClicked()V

    .line 433
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 422
    :pswitch_1a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 425
    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->notifyAccessibilityButtonClicked(I)V

    .line 426
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 404
    :pswitch_1b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 408
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 409
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->monitorGestureInput(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0

    .line 410
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_19

    .line 412
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 413
    invoke-virtual {p0, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_b

    .line 416
    :cond_19
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_b
    return v0

    .line 390
    :pswitch_1c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1a

    .line 393
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/os/Bundle;

    .line 398
    :cond_1a
    invoke-interface {p0, v3}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->startAssistant(Landroid/os/Bundle;)V

    .line 399
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 372
    :pswitch_1d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 375
    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->onAssistantProgress(F)V

    .line 376
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 358
    :pswitch_1e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1b

    .line 361
    sget-object p1, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/view/MotionEvent;

    .line 366
    :cond_1b
    invoke-interface {p0, v3}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->onStatusBarMotionEvent(Landroid/view/MotionEvent;)V

    .line 367
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 336
    :pswitch_1f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 340
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_1c

    move v2, v0

    .line 341
    :cond_1c
    invoke-interface {p0, p1, v2}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->setBackButtonAlpha(FZ)V

    .line 342
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 322
    :pswitch_20
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->getNonMinimizedSplitScreenSecondaryBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 324
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_1d

    .line 326
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    invoke-virtual {p0, p3, v0}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_c

    .line 330
    :cond_1d
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_c
    return v0

    .line 313
    :pswitch_21
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1e

    move v2, v0

    .line 316
    :cond_1e
    invoke-interface {p0, v2}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->onOverviewShown(Z)V

    .line 317
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 304
    :cond_1f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 307
    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->startScreenPinning(I)V

    .line 308
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 296
    :cond_20
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
