.class public Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;
.super Ljava/lang/Object;
.source "WebNode.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5164b91d2764dd3bL


# instance fields
.field private $element_content:Ljava/lang/String;

.field private $element_path:Ljava/lang/String;

.field private $element_position:Ljava/lang/String;

.field private $element_selector:Ljava/lang/String;

.field private $title:Ljava/lang/String;

.field private $url:Ljava/lang/String;

.field private enable_click:Z

.field private height:F

.field private id:Ljava/lang/String;

.field private isRootView:Z

.field private is_list_view:Z

.field private left:F

.field private level:I

.field private lib_version:Ljava/lang/String;

.field private list_selector:Ljava/lang/String;

.field private originLeft:F

.field private originTop:F

.field private scale:F

.field private scrollX:F

.field private scrollY:F

.field private subelements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tagName:Ljava/lang/String;

.field private top:F

.field private visibility:Z

.field private width:F

.field private zIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get$element_content()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->$element_content:Ljava/lang/String;

    return-object v0
.end method

.method public get$element_path()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->$element_path:Ljava/lang/String;

    return-object v0
.end method

.method public get$element_position()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->$element_position:Ljava/lang/String;

    return-object v0
.end method

.method public get$element_selector()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->$element_selector:Ljava/lang/String;

    return-object v0
.end method

.method public get$title()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->$title:Ljava/lang/String;

    return-object v0
.end method

.method public get$url()Ljava/lang/String;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->$url:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()F
    .locals 1

    .line 165
    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->height:F

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLeft()F
    .locals 1

    .line 149
    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->left:F

    return v0
.end method

.method public getLevel()I
    .locals 1

    .line 229
    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->level:I

    return v0
.end method

.method public getLib_version()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->lib_version:Ljava/lang/String;

    return-object v0
.end method

.method public getList_selector()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->list_selector:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginLeft()F
    .locals 1

    .line 253
    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->originLeft:F

    return v0
.end method

.method public getOriginTop()F
    .locals 1

    .line 245
    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->originTop:F

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 197
    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->scale:F

    return v0
.end method

.method public getScrollX()F
    .locals 1

    .line 181
    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->scrollX:F

    return v0
.end method

.method public getScrollY()F
    .locals 1

    .line 189
    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->scrollY:F

    return v0
.end method

.method public getSubelements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->subelements:Ljava/util/List;

    return-object v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->tagName:Ljava/lang/String;

    return-object v0
.end method

.method public getTop()F
    .locals 1

    .line 141
    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->top:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    .line 157
    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->width:F

    return v0
.end method

.method public getzIndex()I
    .locals 1

    .line 213
    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->zIndex:I

    return v0
.end method

.method public isEnable_click()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->enable_click:Z

    return v0
.end method

.method public isIs_list_view()Z
    .locals 1

    .line 125
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->is_list_view:Z

    return v0
.end method

.method public isRootView()Z
    .locals 1

    .line 237
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->isRootView:Z

    return v0
.end method

.method public isVisibility()Z
    .locals 1

    .line 173
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->visibility:Z

    return v0
.end method

.method public set$element_content(Ljava/lang/String;)V
    .locals 0
    .param p1, "$element_content"    # Ljava/lang/String;

    .line 81
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->$element_content:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public set$element_path(Ljava/lang/String;)V
    .locals 0
    .param p1, "$element_path"    # Ljava/lang/String;

    .line 89
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->$element_path:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public set$element_position(Ljava/lang/String;)V
    .locals 0
    .param p1, "$element_position"    # Ljava/lang/String;

    .line 97
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->$element_position:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public set$element_selector(Ljava/lang/String;)V
    .locals 0
    .param p1, "$element_selector"    # Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->$element_selector:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public set$title(Ljava/lang/String;)V
    .locals 0
    .param p1, "$title"    # Ljava/lang/String;

    .line 137
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->$title:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public set$url(Ljava/lang/String;)V
    .locals 0
    .param p1, "$url"    # Ljava/lang/String;

    .line 209
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->$url:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public setEnable_click(Z)V
    .locals 0
    .param p1, "enable_click"    # Z

    .line 121
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->enable_click:Z

    .line 122
    return-void
.end method

.method public setHeight(F)V
    .locals 0
    .param p1, "height"    # F

    .line 169
    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->height:F

    .line 170
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->id:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setIs_list_view(Z)V
    .locals 0
    .param p1, "is_list_view"    # Z

    .line 129
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->is_list_view:Z

    .line 130
    return-void
.end method

.method public setLeft(F)V
    .locals 0
    .param p1, "left"    # F

    .line 153
    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->left:F

    .line 154
    return-void
.end method

.method public setLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .line 233
    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->level:I

    .line 234
    return-void
.end method

.method public setLib_version(Ljava/lang/String;)V
    .locals 0
    .param p1, "lib_version"    # Ljava/lang/String;

    .line 113
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->lib_version:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setList_selector(Ljava/lang/String;)V
    .locals 0
    .param p1, "list_selector"    # Ljava/lang/String;

    .line 105
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->list_selector:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setOriginLeft(F)V
    .locals 0
    .param p1, "originLeft"    # F

    .line 257
    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->originLeft:F

    .line 258
    return-void
.end method

.method public setOriginTop(F)V
    .locals 0
    .param p1, "originTop"    # F

    .line 249
    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->originTop:F

    .line 250
    return-void
.end method

.method public setRootView(Z)V
    .locals 0
    .param p1, "rootView"    # Z

    .line 241
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->isRootView:Z

    .line 242
    return-void
.end method

.method public setScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .line 201
    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->scale:F

    .line 202
    return-void
.end method

.method public setScrollX(F)V
    .locals 0
    .param p1, "scrollX"    # F

    .line 185
    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->scrollX:F

    .line 186
    return-void
.end method

.method public setScrollY(F)V
    .locals 0
    .param p1, "scrollY"    # F

    .line 193
    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->scrollY:F

    .line 194
    return-void
.end method

.method public setSubelements(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 225
    .local p1, "subelements":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->subelements:Ljava/util/List;

    .line 226
    return-void
.end method

.method public setTagName(Ljava/lang/String;)V
    .locals 0
    .param p1, "tagName"    # Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->tagName:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setTop(F)V
    .locals 0
    .param p1, "top"    # F

    .line 145
    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->top:F

    .line 146
    return-void
.end method

.method public setVisibility(Z)V
    .locals 0
    .param p1, "visibility"    # Z

    .line 177
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->visibility:Z

    .line 178
    return-void
.end method

.method public setWidth(F)V
    .locals 0
    .param p1, "width"    # F

    .line 161
    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->width:F

    .line 162
    return-void
.end method

.method public setzIndex(I)V
    .locals 0
    .param p1, "zIndex"    # I

    .line 217
    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->zIndex:I

    .line 218
    return-void
.end method
