.class public final synthetic Lcom/android/systemui/statusbar/phone/NotificationPanelViewController-$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController-$$ExternalSyntheticLambda10;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController-$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController-$$ExternalSyntheticLambda10;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController-$$ExternalSyntheticLambda10;->INSTANCE:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController-$$ExternalSyntheticLambda10;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getCurrentPanelAlpha()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
