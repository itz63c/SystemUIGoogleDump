.class public final enum Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;
.super Ljava/lang/Enum;
.source "BcSmartspaceEvent.java"

# interfaces
.implements Lcom/google/android/systemui/smartspace/EventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;",
        ">;",
        "Lcom/google/android/systemui/smartspace/EventEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

.field public static final enum IGNORE:Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

.field public static final enum SMARTSPACE_CARD_CLICK:Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

.field public static final enum SMARTSPACE_CARD_DISMISS:Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

.field public static final enum SMARTSPACE_CARD_RECEIVED:Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

.field public static final enum SMARTSPACE_CARD_SEEN:Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 8
    new-instance v0, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    const-string v1, "IGNORE"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;->IGNORE:Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    .line 10
    new-instance v1, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    const-string v3, "SMARTSPACE_CARD_RECEIVED"

    const/4 v4, 0x1

    const/16 v5, 0x2f7

    invoke-direct {v1, v3, v4, v5}, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;->SMARTSPACE_CARD_RECEIVED:Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    .line 13
    new-instance v3, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    const-string v5, "SMARTSPACE_CARD_CLICK"

    const/4 v6, 0x2

    const/16 v7, 0x2f8

    invoke-direct {v3, v5, v6, v7}, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;->SMARTSPACE_CARD_CLICK:Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    .line 16
    new-instance v5, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    const-string v7, "SMARTSPACE_CARD_DISMISS"

    const/4 v8, 0x3

    const/16 v9, 0x2f9

    invoke-direct {v5, v7, v8, v9}, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;->SMARTSPACE_CARD_DISMISS:Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    .line 19
    new-instance v7, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    const-string v9, "SMARTSPACE_CARD_SEEN"

    const/4 v10, 0x4

    const/16 v11, 0x320

    invoke-direct {v7, v9, v10, v11}, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;->SMARTSPACE_CARD_SEEN:Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;->$VALUES:[Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput p3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;
    .locals 1

    .line 6
    const-class v0, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    return-object p0
.end method

.method public static values()[Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;->$VALUES:[Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    invoke-virtual {v0}, [Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 0

    .line 32
    iget p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;->mId:I

    return p0
.end method
