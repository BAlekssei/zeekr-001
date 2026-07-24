.class public Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/AutoSafeParcelable$AutoCreator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/AutoSafeParcelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoCreator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final tClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 30
    .local p0, "this":Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/AutoSafeParcelable$AutoCreator;, "Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/AutoSafeParcelable$AutoCreator<TT;>;"
    .local p1, "tClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/AutoSafeParcelable$AutoCreator;, "Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/AutoSafeParcelable$AutoCreator<TT;>;"
    .end local p1    # "tClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iput-object p1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/AutoSafeParcelable$AutoCreator;->tClass:Ljava/lang/Class;

    .line 32
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")TT;"
        }
    .end annotation

    .line 36
    .local p0, "this":Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/AutoSafeParcelable$AutoCreator;, "Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/AutoSafeParcelable$AutoCreator<TT;>;"
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/AutoSafeParcelable$AutoCreator;, "Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/AutoSafeParcelable$AutoCreator<TT;>;"
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/AutoSafeParcelable$AutoCreator;->tClass:Ljava/lang/Class;

    .end local p1    # "source":Landroid/os/Parcel;
    invoke-static {v0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil;->createObject(Ljava/lang/Class;Landroid/os/Parcel;)Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 26
    .local p0, "this":Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/AutoSafeParcelable$AutoCreator;, "Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/AutoSafeParcelable$AutoCreator<TT;>;"
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/AutoSafeParcelable$AutoCreator;, "Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/AutoSafeParcelable$AutoCreator<TT;>;"
    invoke-virtual {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/AutoSafeParcelable$AutoCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable;
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .line 41
    .local p0, "this":Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/AutoSafeParcelable$AutoCreator;, "Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/AutoSafeParcelable$AutoCreator<TT;>;"
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/AutoSafeParcelable$AutoCreator;, "Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/AutoSafeParcelable$AutoCreator<TT;>;"
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/AutoSafeParcelable$AutoCreator;->tClass:Ljava/lang/Class;

    .end local p1    # "size":I
    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 26
    .local p0, "this":Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/AutoSafeParcelable$AutoCreator;, "Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/AutoSafeParcelable$AutoCreator<TT;>;"
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/AutoSafeParcelable$AutoCreator;, "Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/AutoSafeParcelable$AutoCreator<TT;>;"
    invoke-virtual {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/AutoSafeParcelable$AutoCreator;->newArray(I)[Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable;

    move-result-object p1

    return-object p1
.end method
