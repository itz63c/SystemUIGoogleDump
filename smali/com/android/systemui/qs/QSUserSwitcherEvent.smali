.class public final enum Lcom/android/systemui/qs/QSUserSwitcherEvent;
.super Ljava/lang/Enum;
.source "QSEvents.kt"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/qs/QSUserSwitcherEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/qs/QSUserSwitcherEvent;

.field public static final enum QS_USER_DETAIL_CLOSE:Lcom/android/systemui/qs/QSUserSwitcherEvent;

.field public static final enum QS_USER_DETAIL_OPEN:Lcom/android/systemui/qs/QSUserSwitcherEvent;

.field public static final enum QS_USER_MORE_SETTINGS:Lcom/android/systemui/qs/QSUserSwitcherEvent;

.field public static final enum QS_USER_SWITCH:Lcom/android/systemui/qs/QSUserSwitcherEvent;


# instance fields
.field private final _id:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 111
    new-instance v0, Lcom/android/systemui/qs/QSUserSwitcherEvent;

    const-string v1, "QS_USER_SWITCH"

    const/4 v2, 0x0

    const/16 v3, 0x1a8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/qs/QSUserSwitcherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/qs/QSUserSwitcherEvent;->QS_USER_SWITCH:Lcom/android/systemui/qs/QSUserSwitcherEvent;

    .line 114
    new-instance v1, Lcom/android/systemui/qs/QSUserSwitcherEvent;

    const-string v3, "QS_USER_DETAIL_OPEN"

    const/4 v4, 0x1

    const/16 v5, 0x1a9

    invoke-direct {v1, v3, v4, v5}, Lcom/android/systemui/qs/QSUserSwitcherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/qs/QSUserSwitcherEvent;->QS_USER_DETAIL_OPEN:Lcom/android/systemui/qs/QSUserSwitcherEvent;

    .line 117
    new-instance v3, Lcom/android/systemui/qs/QSUserSwitcherEvent;

    const-string v5, "QS_USER_DETAIL_CLOSE"

    const/4 v6, 0x2

    const/16 v7, 0x1aa

    invoke-direct {v3, v5, v6, v7}, Lcom/android/systemui/qs/QSUserSwitcherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/systemui/qs/QSUserSwitcherEvent;->QS_USER_DETAIL_CLOSE:Lcom/android/systemui/qs/QSUserSwitcherEvent;

    .line 120
    new-instance v5, Lcom/android/systemui/qs/QSUserSwitcherEvent;

    const-string v7, "QS_USER_MORE_SETTINGS"

    const/4 v8, 0x3

    const/16 v9, 0x1ab

    invoke-direct {v5, v7, v8, v9}, Lcom/android/systemui/qs/QSUserSwitcherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/systemui/qs/QSUserSwitcherEvent;->QS_USER_MORE_SETTINGS:Lcom/android/systemui/qs/QSUserSwitcherEvent;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/android/systemui/qs/QSUserSwitcherEvent;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/android/systemui/qs/QSUserSwitcherEvent;->$VALUES:[Lcom/android/systemui/qs/QSUserSwitcherEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 110
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/systemui/qs/QSUserSwitcherEvent;->_id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/qs/QSUserSwitcherEvent;
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/android/systemui/qs/QSUserSwitcherEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 124
    check-cast p0, Lcom/android/systemui/qs/QSUserSwitcherEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/qs/QSUserSwitcherEvent;
    .locals 4

    sget-object v0, Lcom/android/systemui/qs/QSUserSwitcherEvent;->$VALUES:[Lcom/android/systemui/qs/QSUserSwitcherEvent;

    array-length v1, v0

    new-array v1, v1, [Lcom/android/systemui/qs/QSUserSwitcherEvent;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method


# virtual methods
.method public getId()I
    .locals 0

    .line 123
    iget p0, p0, Lcom/android/systemui/qs/QSUserSwitcherEvent;->_id:I

    return p0
.end method
