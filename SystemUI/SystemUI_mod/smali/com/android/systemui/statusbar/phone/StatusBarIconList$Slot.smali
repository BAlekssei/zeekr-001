.class public Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;
.super Ljava/lang/Object;
.source "StatusBarIconList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarIconList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Slot"
.end annotation


# instance fields
.field private mHolder:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

.field private final mName:Ljava/lang/String;

.field private mSubSlots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "iconHolder"    # Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mName:Ljava/lang/String;

    .line 120
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mHolder:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 121
    return-void
.end method

.method private getIndexForTag(I)I
    .locals 3
    .param p1, "tag"    # I

    .line 189
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 190
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 191
    .local v1, "h":Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->getTag()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 192
    return v0

    .line 189
    .end local v1    # "h":Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private setSubSlot(Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;I)V
    .locals 2
    .param p1, "holder"    # Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
    .param p2, "tag"    # I

    .line 173
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    .line 175
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    return-void

    .line 179
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->getIndexForTag(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 181
    return-void

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    return-void
.end method

.method private subSlotsString()Ljava/lang/String;
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 259
    const-string v0, ""

    return-object v0

    .line 262
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " subSlots"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addHolder(Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V
    .locals 1
    .param p1, "holder"    # Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 145
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->getTag()I

    move-result v0

    .line 146
    .local v0, "tag":I
    if-nez v0, :cond_0

    .line 147
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mHolder:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    goto :goto_0

    .line 149
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->setSubSlot(Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;I)V

    .line 151
    :goto_0
    return-void
.end method

.method public clear()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mHolder:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 167
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 168
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    .line 170
    :cond_0
    return-void
.end method

.method public getHolderForTag(I)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
    .locals 3
    .param p1, "tag"    # I

    .line 129
    if-nez p1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mHolder:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    return-object v0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 135
    .local v1, "holder":Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->getTag()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 136
    return-object v1

    .line 138
    .end local v1    # "holder":Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
    :cond_1
    goto :goto_0

    .line 141
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHolderListInViewOrder()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;",
            ">;"
        }
    .end annotation

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v0, "holders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;>;"
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 241
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 245
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mHolder:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    if-eqz v1, :cond_1

    .line 246
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mHolder:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_1
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public hasIconsInSlot()Z
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mHolder:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1
.end method

.method public numberOfIcons()I
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mHolder:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 208
    .local v0, "num":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    return v0

    .line 210
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public removeForTag(I)V
    .locals 2
    .param p1, "tag"    # I

    .line 154
    if-nez p1, :cond_0

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mHolder:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    goto :goto_0

    .line 157
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->getIndexForTag(I)I

    move-result v0

    .line 158
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 162
    .end local v0    # "index":I
    :cond_1
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 254
    const-string v0, "(%s) %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->subSlotsString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public viewIndexOffsetForTag(I)I
    .locals 2
    .param p1, "tag"    # I

    .line 219
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 220
    const/4 v0, 0x0

    return v0

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 224
    .local v0, "subSlots":I
    if-nez p1, :cond_1

    .line 225
    return v0

    .line 228
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->getIndexForTag(I)I

    move-result v1

    sub-int v1, v0, v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method
