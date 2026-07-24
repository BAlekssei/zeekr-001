.class public final synthetic Lcom/android/systemui/-$$Lambda$Dependency$NQ8IRaSfXd3NeLc2G80TpRR5woo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$NQ8IRaSfXd3NeLc2G80TpRR5woo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/-$$Lambda$Dependency$NQ8IRaSfXd3NeLc2G80TpRR5woo;

    invoke-direct {v0}, Lcom/android/systemui/-$$Lambda$Dependency$NQ8IRaSfXd3NeLc2G80TpRR5woo;-><init>()V

    sput-object v0, Lcom/android/systemui/-$$Lambda$Dependency$NQ8IRaSfXd3NeLc2G80TpRR5woo;->INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$NQ8IRaSfXd3NeLc2G80TpRR5woo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p1}, Lcom/android/systemui/Dependency;->lambda$onConfigurationChanged$61(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
