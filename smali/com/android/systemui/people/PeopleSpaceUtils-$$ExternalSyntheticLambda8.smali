.class public final synthetic Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda8;-><init>()V

    sput-object v0, Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda8;->INSTANCE:Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda8;

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

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-static {p1}, Lcom/android/systemui/people/PeopleSpaceUtils;->$r8$lambda$rgB8zpc9FynIkoaUQjlQYbuyu-Q(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    return-object p0
.end method
